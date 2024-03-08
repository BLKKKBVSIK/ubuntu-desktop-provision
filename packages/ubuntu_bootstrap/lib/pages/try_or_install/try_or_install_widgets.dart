import 'package:flutter/material.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';
import 'package:yaru/yaru.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
    this.subtitle,
  });

  final Widget title;
  final Widget? subtitle;
  final TryOrInstallOption value;
  final TryOrInstallOption groupValue;
  final ValueChanged<TryOrInstallOption?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 500),
      decoration: BoxDecoration(
        color: value == groupValue
            ? scheme.primary.withOpacity(0.1)
            : scheme.primaryContainer,
        border: Border.all(
          color: value == groupValue ? scheme.primary : scheme.outline,
        ),
        borderRadius: BorderRadius.circular(kYaruButtonRadius),
      ),
      child: YaruRadioButton<TryOrInstallOption>(
        contentPadding: const EdgeInsetsDirectional.fromSTEB(15, 10, 60, 10),
        title: DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.bold),
          child: title,
        ),
        subtitle: subtitle,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
