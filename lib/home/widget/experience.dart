import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/l10n/l10n.dart';
import 'package:personal_portfolio/models/education.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    var timeline = Education.timeline[context.l10n.localeName];
    timeline ??= Education.timeline.values.first;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          context.l10n.experience,
          style: TextStyles.subHeading,
        ),
        Text(
          context.l10n.experienceSummary,
          style: TextStyles.body,
        ),
        const SizedBox(height: 8),
        ...timeline.map(EducationTile.new),
      ],
    );
  }
}

class EducationTile extends StatelessWidget {
  const EducationTile(this.item, {super.key});

  final Education item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            item.post,
            style: TextStyles.company,
          ),
          Text(
            item.organization,
            style: TextStyles.body.copyWith(
              color: const Color(0xFF45405B),
            ),
          ),
          Text(
            '${item.from} - ${item.to}',
            style: TextStyles.body,
          ),
        ],
      ),
    );
  }
}
