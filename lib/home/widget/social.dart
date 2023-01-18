import 'package:flutter/material.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetwork extends StatelessWidget {
  const SocialNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/vuitv'));
          },
          child: Assets.icons.github.svg(
            height: 24,
            width: 24,
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://t.me/vuitv'));
          },
          child: Assets.icons.telegram.svg(
            height: 24,
            width: 24,
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://www.facebook.com/vuiit'));
          },
          child: Assets.icons.facebook.svg(
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }
}
