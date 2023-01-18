import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/l10n/l10n.dart';

class MenuButton {
  static const menus = [
    HomeMenuButton(),
    AboutMenuButton(),
    ContactMenuButton(),
  ];
}

class HomeMenuButton extends StatelessWidget {
  const HomeMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        context.l10n.home,
        style: TextStyles.menuItem.copyWith(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}

class AboutMenuButton extends StatelessWidget {
  const AboutMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        context.l10n.about,
        style: TextStyles.menuItem,
      ),
    );
  }
}

class ContactMenuButton extends StatelessWidget {
  const ContactMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Text(
        context.l10n.contact,
        style: TextStyles.menuItem,
      ),
    );
  }
}
