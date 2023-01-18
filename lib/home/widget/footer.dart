import 'package:flutter/material.dart';
import 'package:personal_portfolio/home/widget/copyright.dart';
import 'package:personal_portfolio/home/widget/social.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              CopyRight(),
              SocialNetwork(),
            ],
          ),
        ),
      ],
    );
  }
}
