import 'package:flutter/material.dart';
import 'package:my_profile/core/assets/images/images.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';
import 'package:my_profile/core/style/style.dart';

const String baseUrl =
    'https://raw.githubusercontent.com/devicons/devicon/master/icons/';

/// A widget that displays a section showcasing skills.
///
/// This widget presents a title, subtitle, and a list of
/// individual skill widgets, each detailing a specific skill.
class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const SizedBox(
            width: 335,
            height: 40,
            child: _SkillsTitle(),
          ),
          Text(
            translate.home_page.professional_skills,
            textAlign: TextAlign.center,
            style: context.textTheme.headlineMedium,
          ),
          spaceV24,
          _buildSkillsList(context),
        ],
      );

  /// Builds the list of skills using a `Wrap` widget for responsive layout.
  Widget _buildSkillsList(BuildContext context) => Wrap(
        spacing: AppSpacing.medium,
        runSpacing: AppSpacing.medium,
        children: _skillsData
            .map((SkillData skill) => SkillBoxWidget(skill: skill))
            .toList(),
      );

  /// A list of skill data, each containing a skill name and image URL.
  static const List<SkillData> _skillsData = <SkillData>[
    SkillData(name: 'Dart', imageUrl: '$baseUrl/dart/dart-original.svg'),
    SkillData(
        name: 'Flutter', imageUrl: '$baseUrl/flutter/flutter-original.svg'),
    SkillData(name: 'Python', imageUrl: '$baseUrl/python/python-original.svg'),
    SkillData(name: 'Java', imageUrl: '$baseUrl/java/java-original.svg'),
    SkillData(
        name: 'TypeScript',
        imageUrl: '$baseUrl/typescript/typescript-original.svg'),
    SkillData(
        name: 'Javascript',
        imageUrl: '$baseUrl/javascript/javascript-original.svg'),
    SkillData(
        name: 'C++', imageUrl: '$baseUrl/cplusplus/cplusplus-original.svg'),
  ];
}

/// A data class representing a single skill with its name and image URL.
class SkillData {
  final String name;
  final String imageUrl;

  const SkillData({required this.name, required this.imageUrl});
}

/// A widget that displays the title for the skills section.
class _SkillsTitle extends StatelessWidget {
  const _SkillsTitle();

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: translate.home_page.my_talents.toUpperCase(),
              style:
                  context.textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
}

/// A widget that displays a single skill item.
class SkillBoxWidget extends StatelessWidget {
  const SkillBoxWidget({super.key, required this.skill});

  final SkillData skill;
  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 200,
        decoration: _buildContainerDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildSkillImage(),
              spaceV16,
              Text(
                skill.name,
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      );

  /// Builds the decoration for the skill box container.
  BoxDecoration _buildContainerDecoration() => BoxDecoration(
        color: AppColors.iconBackground,
        borderRadius: BorderRadius.circular(10),
      );

  /// Builds the image widget for the skill.
  Widget _buildSkillImage() => SizedBox(
        width: 80,
        height: 80,
        child: Images.getTokenLogo(logoUrl: skill.imageUrl),
      );
}
