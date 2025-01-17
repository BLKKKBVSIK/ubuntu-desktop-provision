import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_dialogs.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

export 'storage_model.dart' show StorageType;

/// Select between guided and manual partitioning.
class StoragePage extends ConsumerWidget with ProvisioningPage {
  const StoragePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(storageModelProvider.notifier).init().then((_) => true);
  }

  static String _formatHeader(BuildContext context, List<OsProber> os) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    switch (os.length) {
      case 0:
        return lang.installationTypeNoOSDetected;
      case 1:
        return lang.installationTypeOSDetected(os.single.long);
      case 2:
        return os.hasDuplicates
            ? lang.installationTypeMultiOSDetected
            : lang.installationTypeDualOSDetected(os.first.long, os.last.long);
      default:
        return lang.installationTypeMultiOSDetected;
    }
  }

  static String _formatAlongside(
      UbuntuBootstrapLocalizations lang, ProductInfo info, List<OsProber> os) {
    final product = [info.name, info.version].whereType<String>().join(' ');
    switch (os.length) {
      case 0:
        return lang.installationTypeAlongsideUnknown(product);
      case 1:
        return lang.installationTypeAlongside(product, os.single.long);
      case 2:
        return os.hasDuplicates
            ? lang.installationTypeAlongsideMulti(product)
            : lang.installationTypeAlongsideDual(
                product, os.first.long, os.last.long);
      default:
        return lang.installationTypeAlongsideMulti(product);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    return HorizontalPage(
      windowTitle: lang.installationTypeTitle,
      title: _formatHeader(context, model.existingOS ?? []),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (model.canInstallAlongside || model.hasBitLocker)
            Padding(
              padding: const EdgeInsets.only(bottom: kWizardSpacing),
              child: YaruRadioButton<StorageType>(
                title: Text(
                  _formatAlongside(
                    lang,
                    model.productInfo,
                    model.existingOS ?? [],
                  ),
                ),
                subtitle: Text(lang.installationTypeAlongsideInfo),
                value: StorageType.alongside,
                groupValue: model.type,
                onChanged: (v) => model.type = v,
              ),
            ),
          if (model.canEraseDisk) ...[
            Padding(
              padding: const EdgeInsets.only(bottom: kWizardSpacing),
              child: YaruRadioButton<StorageType>(
                title: Text(lang.installationTypeErase(flavor.displayName)),
                subtitle: Html(
                  data: lang.installationTypeEraseWarning(
                      Theme.of(context).colorScheme.error.toHex()),
                  style: {'body': Style(margin: Margins.zero)},
                ),
                value: StorageType.erase,
                groupValue: model.type,
                onChanged: (value) => model.type = value,
              ),
            ),
            if (model.hasAdvancedFeatures)
              Padding(
                padding: kWizardIndentation,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    OutlinedButton(
                      onPressed: model.type == StorageType.erase
                          ? () => showAdvancedFeaturesDialog(context, model)
                          : null,
                      child: Text(lang.installationTypeAdvancedLabel),
                    ),
                    const SizedBox(width: kWizardSpacing),
                    Flexible(
                      child: Text(model.guidedCapability?.localize(lang) ?? ''),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: kWizardSpacing),
          ],
          if (model.canManualPartition)
            YaruRadioButton<StorageType>(
              title: Text(lang.installationTypeManual),
              subtitle:
                  Text(lang.installationTypeManualInfo(flavor.displayName)),
              value: StorageType.manual,
              groupValue: model.type,
              onChanged: (v) => model.type = v,
            ),
        ],
      ),
      isNextEnabled: model.canEraseDisk ||
          model.canInstallAlongside ||
          model.canManualPartition,
      nextArguments: model.type,
      onNext: model.save,
      // If the user returns back to select another installation type, the
      // previously configured storage must be reset to make all guided
      // partitioning targets available.
      onBack: model.resetStorage,
    );
  }
}

extension _GuidedCapabilityL10n on GuidedCapability {
  String localize(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case GuidedCapability.LVM:
        return lang.installationTypeLVMSelected;
      case GuidedCapability.LVM_LUKS:
        return lang.installationTypeLVMEncryptionSelected;
      case GuidedCapability.ZFS:
        return lang.installationTypeZFSSelected;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
      case GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED:
        return lang.installationTypeTPMSelected;
      default:
        return lang.installationTypeNoneSelected;
    }
  }
}

extension _OsProberList on List<OsProber> {
  /// Whether the system has any OS installed multiple times.
  bool get hasDuplicates =>
      length > 1 && length != map((os) => os.long).toSet().length;
}
