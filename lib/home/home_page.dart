import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/text_styles.dart';
import 'package:personal_portfolio/gen/assets.gen.dart';
import 'package:personal_portfolio/gen/fonts.gen.dart';
import 'package:personal_portfolio/l10n/l10n.dart';
import 'package:personal_portfolio/models/education.dart';
import 'package:vuitv/vuitv.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFF7F8FA),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.isMobile ? 0 : 140,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              titleSpacing: 0,
              title: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: context.l10n.portfolio,
                      style: TextStyles.logo,
                    ),
                    TextSpan(
                      text: context.l10n.o,
                      style: TextStyles.logo.copyWith(
                        color: const Color(0xFF50AFC0),
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                MaterialButton(
                  child: Text(
                    context.l10n.home,
                    style: TextStyles.menuItem.copyWith(
                      color: const Color(0xFF50AFC0),
                    ),
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Text(
                    context.l10n.about,
                    style: TextStyles.menuItem,
                  ),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Text(
                    context.l10n.contact,
                    style: TextStyles.menuItem,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  MaterialButton(
                    child: Text(
                      context.l10n.home,
                      style: TextStyles.menuItem.copyWith(
                        color: const Color(0xFF50AFC0),
                      ),
                    ),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text(
                      context.l10n.about,
                      style: TextStyles.menuItem,
                    ),
                    onPressed: () {},
                  ),
                  MaterialButton(
                    child: Text(
                      context.l10n.contact,
                      style: TextStyles.menuItem,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            body: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: constraints.maxWidth,
                      minHeight: constraints.maxHeight,
                    ),
                    child: Responsive(
                      desktop: _buildLargeScreen(context),
                      tablet: _buildMediumScreen(context),
                      mobile: _buildSmallScreen(context),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLargeScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: _buildContent(context)),
                _buildIllustration(),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildMediumScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: _buildContent(context)),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildSmallScreen(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(child: _buildContent(context)),
          const Divider(),
          _buildCopyRightText(context),
          SizedBox(height: context.isMobile ? 12.0 : 0.0),
          _buildSocialIcons(),
          SizedBox(height: context.isMobile ? 12.0 : 0.0),
        ],
      ),
    );
  }

  // Body Methods:--------------------------------------------------------------
  Widget _buildIllustration() {
    return Assets.lottie.coder.lottie(
      width: 345,
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: context.isMobile ? 24.0 : 0.0),
        _buildAboutMe(context),
        const SizedBox(height: 4),
        _buildHeadline(context),
        SizedBox(height: context.isMobile ? 12.0 : 24.0),
        _buildSummary(context),
        SizedBox(height: context.isMobile ? 24.0 : 48.0),
        if (context.isMobile)
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildEducation(context),
              const SizedBox(height: 24),
              _buildSkills(context),
            ],
          )
        else
          _buildSkillsAndEducation(context)
      ],
    );
  }

  Widget _buildAboutMe(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: context.isMobile ? 36 : 45.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: context.l10n.aboutMe,
            style: TextStyles.heading.copyWith(
              fontFamily: FontFamily.nexa,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: ' ${context.l10n.me}',
            style: TextStyles.heading.copyWith(
              color: const Color(0xFF50AFC0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeadline(BuildContext context) {
    return Text(
      context.l10n.headline,
      style: TextStyles.subHeading,
    );
  }

  Widget _buildSummary(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: Text(
        context.l10n.summary,
        style: TextStyles.body,
      ),
    );
  }

  Widget _buildSkillsAndEducation(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(child: _buildEducation(context)),
        const SizedBox(width: 40),
        Expanded(
          child: _buildSkills(context),
        ),
      ],
    );
  }

  final skills = [
    'Java',
    'Kotlin',
    'Dart',
    'Flutter',
    'Android',
    'iOS',
    'React Native',
    'Reactive Programming',
    'GitHub',
    'Photoshop',
    'Figma',
  ];

  Widget _buildSkills(BuildContext context) {
    final widgets = skills
        .map(
          (skill) => _buildSkillChip(context, skill),
        )
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSkillsContainerHeading(context),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: widgets,
        ),
      ],
    );
  }

  Widget _buildSkillsContainerHeading(BuildContext context) {
    return Text(
      context.l10n.skillTitle,
      style: TextStyles.subHeading,
    );
  }

  Widget _buildSkillChip(BuildContext context, String label) {
    return Chip(
      label: Text(
        label,
        style: TextStyles.chip.copyWith(
          fontSize: context.isMobile ? 10.0 : 11.0,
        ),
      ),
    );
  }

  final educationList = [
    Education(
      'Apr 2018',
      'Present',
      'Embrace-it Pakistan',
      'Sr. Software Engineer',
    ),
    Education(
      'Apr 2016',
      'Apr 2018',
      'TEO International',
      'Sr. Software Engineer',
    ),
    Education(
      'July 2014',
      'March 2016',
      'Citrusbits',
      'Software Engineer',
    ),
  ];

  Widget _buildEducation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildEducationContainerHeading(context),
        _buildEducationSummary(context),
        const SizedBox(height: 8),
        _buildEducationTimeline(),
      ],
    );
  }

  Widget _buildEducationContainerHeading(BuildContext context) {
    return Text(
      context.l10n.experience,
      style: TextStyles.subHeading,
    );
  }

  Widget _buildEducationSummary(BuildContext context) {
    return Text(
      context.l10n.experienceSummary,
      style: TextStyles.body,
    );
  }

  Widget _buildEducationTimeline() {
    final widgets = educationList.map(_buildEducationTile).toList();
    return Column(children: widgets);
  }

  Widget _buildEducationTile(Education education) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            education.post,
            style: TextStyles.company,
          ),
          Text(
            education.organization,
            style: TextStyles.body.copyWith(
              color: const Color(0xFF45405B),
            ),
          ),
          Text(
            '${education.from}-${education.to}',
            style: TextStyles.body,
          ),
        ],
      ),
    );
  }

  // Footer Methods:------------------------------------------------------------
  Widget _buildFooter(BuildContext context) {
    return Column(
      children: <Widget>[
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: _buildCopyRightText(context),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _buildSocialIcons(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCopyRightText(BuildContext context) {
    return Text(
      context.l10n.rightsReserved,
      style: TextStyles.body1.copyWith(
        fontSize: context.isMobile ? 8 : 10.0,
      ),
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Assets.icons.icLinkedIn.image(
            color: const Color(0xFF45405B),
            height: 20,
            width: 20,
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {},
          child: Assets.icons.icEvernote.image(
            color: const Color(0xFF45405B),
            height: 20,
            width: 20,
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {},
          child: Assets.icons.icGoogle.image(
            color: const Color(0xFF45405B),
            height: 20,
            width: 20,
          ),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          onTap: () {},
          child: Assets.icons.icTwitter.image(
            color: const Color(0xFF45405B),
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
}
