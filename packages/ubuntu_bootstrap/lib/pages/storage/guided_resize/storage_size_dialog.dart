import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../../l10n.dart';
import '../../../widgets.dart';

Future<int?> showStorageSizeDialog(
  BuildContext context, {
  required String title,
  required String? name,
  required int initialSize,
  required int minimumSize,
  required int maximumSize,
  String? path,
}) {
  final unit = ValueNotifier(DataUnit.megabytes);
  final size = ValueNotifier(initialSize);

  return showDialog(
    context: context,
    builder: (context) => AnimatedBuilder(
      animation: Listenable.merge([size, unit]),
      builder: (context, child) => StorageSizeDialog(
        title: title,
        name: name,
        path: path,
        size: size.value,
        unit: unit.value,
        minimumSize: minimumSize,
        maximumSize: maximumSize,
        onSizeChanged: (value) => size.value = value,
        onUnitSelected: (value) => unit.value = value,
      ),
    ),
  );
}

class StorageSizeDialog extends StatelessWidget {
  const StorageSizeDialog({
    required this.title,
    required this.name,
    required this.size,
    required this.unit,
    required this.minimumSize,
    required this.maximumSize,
    required this.onSizeChanged,
    required this.onUnitSelected,
    super.key,
    this.path,
  });

  final String title;
  final String? name;
  final String? path;
  final int size;
  final DataUnit unit;
  final int minimumSize;
  final int maximumSize;
  final ValueChanged<int> onSizeChanged;
  final ValueChanged<DataUnit> onUnitSelected;

  String formatSize(int size) {
    return fromBytes(size, unit).round().toString();
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final canAccept = size >= minimumSize && size <= maximumSize;
    return AlertDialog(
      title: YaruDialogTitleBar(
        title: Text(title),
      ),
      titlePadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.all(kYaruPagePadding),
      actionsPadding: const EdgeInsets.all(kYaruPagePadding),
      buttonPadding: EdgeInsets.zero,
      content: CallbackShortcuts(
        bindings: {
          if (canAccept)
            const SingleActivator(LogicalKeyboardKey.enter): () {
              Navigator.of(context).pop(size);
            },
        },
        child: FormLayout(
          rowSpacing: kWizardSpacing,
          columnSpacing: kWizardSpacing,
          rows: [
            [
              Text(lang.installAlongsidePartition, textAlign: TextAlign.end),
              if (path != null)
                Text('$path ($name)')
              else if (name != null)
                Text(name!),
            ],
            [
              Text(lang.partitionSizeLabel, textAlign: TextAlign.end),
              ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 320),
                child: StorageSizeBox(
                  autofocus: true,
                  size: size,
                  unit: unit,
                  minimum: minimumSize,
                  maximum: maximumSize,
                  onSizeChanged: onSizeChanged,
                  onUnitSelected: onUnitSelected,
                ),
              ),
            ],
            [
              Text(lang.installAlongsideAvailable, textAlign: TextAlign.end),
              Text(
                '${formatSize(minimumSize)}-${formatSize(maximumSize)} ${unit.l10n(context)}',
              ),
            ],
          ],
        ),
      ),
      actions: [
        PushButton.outlined(
          onPressed: () => Navigator.of(context).pop(null),
          child: Text(UbuntuLocalizations.of(context).cancelLabel),
        ),
        const SizedBox(width: kWizardBarSpacing),
        PushButton.filled(
          onPressed: canAccept ? () => Navigator.of(context).pop(size) : null,
          child: Text(UbuntuLocalizations.of(context).okLabel),
        ),
      ],
    );
  }
}
