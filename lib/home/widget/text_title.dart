import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/l10n/l10n.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: context.l10n.portfolio.substring(
              0,
              context.l10n.portfolio.length - 1,
            ),
            style: TextStyles.logo,
          ),
          TextSpan(
            text: context.l10n.portfolio.characters.last,
            style: TextStyles.logo.copyWith(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
