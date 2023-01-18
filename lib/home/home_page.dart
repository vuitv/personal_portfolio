import 'package:flutter/material.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/home/widget/content.dart';
import 'package:personal_portfolio/home/widget/footer.dart';
import 'package:personal_portfolio/home/widget/menu_button.dart';
import 'package:personal_portfolio/home/widget/text_title.dart';
import 'package:vuitv/vuitv.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.responsive(140, 0, 64),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const TextTitle(),
              actions: !context.isMobile //
                  ? MenuButton.menus
                  : null,
            ),
            drawer: context.isMobile
                ? Drawer(
                    child: ListView(
                      padding: const EdgeInsets.all(20),
                      children: const [
                        ...MenuButton.menus,
                      ],
                    ),
                  )
                : null,
            body: SingleChildScrollView(
              child: Responsive(
                desktop: _buildLargeScreen(),
                tablet: _buildMediumScreen(),
                mobile: _buildSmallScreen(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLargeScreen() {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(child: Content()),
                Illustration(),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }

  Widget _buildMediumScreen() {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(child: Content()),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }

  Widget _buildSmallScreen() {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Content(),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}

class Illustration extends StatelessWidget {
  const Illustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.lottie.coder.lottie(
      width: 345,
    );
  }
}
