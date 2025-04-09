import 'package:flutter/material.dart';
import 'package:my_profile/core/assets/images/images.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';
import 'package:my_profile/core/style/style.dart';

/// A widget that displays an "About Me" section with an image and text.
///
/// This widget is responsible for presenting a brief introduction
/// of the user, including a profile picture and a summary of their
/// skills and experience.
class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _ProfilePicture(),
          Expanded(child: _AboutMeContent()),
        ],
      );
}

/// A widget that displays the user's profile picture within a styled container.
class _ProfilePicture extends StatelessWidget {
  const _ProfilePicture();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.large),
        child: Container(
          width: 515,
          height: 646,
          decoration: _buildContainerDecoration(),
          child: Image.asset(
            Images.myPicture,
            fit: BoxFit.cover,
          ),
        ),
      );

  /// Builds the decoration for the profile picture container.
  ///
  /// This includes the background color, border, and border radius.
  BoxDecoration _buildContainerDecoration() => BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 20,
          strokeAlign: BorderSide.strokeAlignOutside,
          color: AppColors.borderColor,
        ),
      );
}

/// A widget that displays the textual content of the "About Me" section.
///
/// This includes the section title, the user's professional title,
/// a summary of their experience, and a list of their skills.
class _AboutMeContent extends StatelessWidget {
  const _AboutMeContent();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            _buildSectionTitle(context.textTheme),
            const SizedBox(height: AppSpacing.small),
            const _ProfessionalTitle(),
            const SizedBox(height: AppSpacing.medium),
            const _SummaryText(),
            const SizedBox(height: AppSpacing.large),
            const _SkillsList(),
          ],
        ),
      );

  /// Builds the section title.
  Widget _buildSectionTitle(TextTheme textTheme) => Text(
        translate.home_page.about_me,
        style: textTheme.titleLarge?.copyWith(
          letterSpacing: 4,
        ),
      );
}

/// A widget that displays the user's professional title.
class _ProfessionalTitle extends StatelessWidget {
  const _ProfessionalTitle();

  @override
  Widget build(BuildContext context) => SizedBox(
        child: Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: 'Driven,',
                style: context.textTheme.headlineLarge?.copyWith(
                  color: AppColors.primary,
                  // fontSize: 40,
                  // fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                  text: ' innovative\nSoftware ',
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: AppColors.textPrimary,
                    // fontSize: 40,
                    // fontWeight: FontWeight.w400,
                  )),
              TextSpan(
                text: 'Engineer',
                style: context.textTheme.headlineLarge?.copyWith(
                  color: AppColors.primary,
                  // fontSize: 40,
                  // fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      );
}

/// A widget that displays a summary of the user's experience.
class _SummaryText extends StatelessWidget {
  static const String _summary =
      'More than 5 years Experience in the development of software and solutions. A conscientious person who pays attention to details. Very passionate about software development, always willing and ready to learn new things/concepts. Proven leader with the ability to streamline development processes to drive the achievement of organisational objectives.';

  const _SummaryText();

  @override
  Widget build(BuildContext context) => Text(
        _summary,
        style: context.textTheme.titleLarge,
        textAlign: TextAlign.justify,
        softWrap: true,
      );
}

/// A widget that displays a list of the user's skills.
class _SkillsList extends StatelessWidget {
  const _SkillsList();

  static const List<String> _skills = [
    'Develop highly interactive Front end / User Interfaces for the web',
    'Progressive Web Applications ( PWA ) in normal and SPA Stacks',
    'Integration of third party services such as AWS / Digital Ocean',
    'Integration of payment services such as M-Pesa and paypal etc',
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: _skills
            .map((String skill) => Column(
                  children: <Widget>[
                    _SkillItem(text: skill),
                    spaceV4,
                  ],
                ))
            .toList(),
      );
}

/// A widget that displays a single skill item.
class _SkillItem extends StatelessWidget {
  final String text;

  const _SkillItem({required this.text});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Icon(
            Icons.check_circle,
            color: AppColors.primary,
            size: 20,
          ),
          spaceH20,
          Expanded(
            child: Text(
              text,
              style: context.textTheme.titleLarge,
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
        ],
      );
}
