import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/home/widget/experience.dart';
import 'package:personal_portfolio/home/widget/skills.dart';
import 'package:personal_portfolio/l10n/l10n.dart';
import 'package:vuitv/vuitv.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: context.isMobile ? 24.0 : 0.0),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: context.isMobile ? 36 : 45.0,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: context.l10n.aboutMe,
                style: TextStyles.heading.copyWith(
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextSpan(
                text: ' ${context.l10n.me}',
                style: TextStyles.heading.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          context.l10n.headline,
          style: TextStyles.subHeading,
        ),
        SizedBox(height: context.isMobile ? 12.0 : 24.0),
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Text(
            context.l10n.summary,
            style: TextStyles.body,
          ),
        ),
        SizedBox(height: context.isMobile ? 24.0 : 48.0),
        if (context.isMobile)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Experience(),
              SizedBox(height: 24),
              Skills(),
            ],
          )
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Expanded(child: Experience()),
              SizedBox(width: 40),
              Expanded(child: Skills()),
            ],
          )
      ],
    );
  }
}
