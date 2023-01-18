import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/l10n/l10n.dart';
import 'package:vuitv/vuitv.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  static const skills = [
    'Dart',
    'Flutter',
    'Android',
    'iOS',
    'Java',
    'Kotlin',
    'React Native',
    'Reactive Programming',
    'GitHub',
    'Photoshop',
    'Figma',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          context.l10n.skillTitle,
          style: TextStyles.subHeading,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map(SkillItem.new).toList(),
        ),
      ],
    );
  }
}

class SkillItem extends StatelessWidget {
  const SkillItem(this.label, {super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyles.chip.copyWith(
          fontSize: context.isMobile ? 10.0 : 11.0,
        ),
      ),
    );
  }
}
