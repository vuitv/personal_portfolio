import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/l10n/l10n.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.rightsReserved,
      style: TextStyles.body1,
    );
  }
}
