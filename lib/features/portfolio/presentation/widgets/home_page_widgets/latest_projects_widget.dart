import 'package:flutter/material.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';
import 'package:my_profile/core/style/style.dart';

import '../../../domain/entities/entities.dart';

/// A widget that displays a section showcasing the latest projects.
///
/// Presents a title, a highlighted subtitle, and a horizontal list of project cards.
class LatestProjects extends StatelessWidget {
  const LatestProjects({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          const _SectionTitle(),
          const _HighlightedSubtitle(),
          spaceV24,
          _buildProjectCards(),
        ],
      );

  /// Builds a horizontal list of project cards.
  Widget _buildProjectCards() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _projectsData
              .map((Project project) => ProjectCard(project: project))
              .toList(),
        ),
      );

  /// A list of project data, each containing relevant information.
  static const List<Project> _projectsData = <Project>[
    Project(
      title: 'My  Profile',
      subtitle: 'Flutter portfolio Website',
      description:
          'This is my portfolio website built with Flutter. It showcases my skills, projects, and experience in a visually appealing manner.',
      imageUrl: 'https://placehold.co/593x341.jpg',
      technologies: ['Flutter', 'Dart', 'Firebase'],
    ),
    // Add more projects as needed...
  ];
}

/// Widget for the section title.
class _SectionTitle extends StatelessWidget {
  const _SectionTitle();

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 335,
        height: 40,
        child: Text(
          translate.home_page.latest_projects.toUpperCase(),
          textAlign: TextAlign.center,
          style: context.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            letterSpacing: 4,
          ),
        ),
      );
}

/// Widget for the highlighted subtitle.
class _HighlightedSubtitle extends StatelessWidget {
  const _HighlightedSubtitle();

  @override
  Widget build(BuildContext context) => Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: 'Explore My Popular ',
              style: context.textTheme.headlineMedium?.copyWith(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'Projects',
              style: context.textTheme.headlineMedium?.copyWith(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
}

/// Widget representing a single project card.
class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Row(
          children: <Widget>[
            _ProjectImage(imageUrl: project.imageUrl ?? ''),
            const SizedBox(width: AppSpacing.medium),
            _ProjectDetails(project: project),
          ],
        ),
      );
}

/// Widget for displaying the project image.
class _ProjectImage extends StatelessWidget {
  final String imageUrl;

  const _ProjectImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) => Container(
        width: 616,
        height: 421,
        decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            width: 593,
            height: 341,
            fit: BoxFit.cover,
          ),
        ),
      );
}

/// Widget for displaying project details (title, subtitle, description).
class _ProjectDetails extends StatelessWidget {
  final Project project;

  const _ProjectDetails({required this.project});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            project.title,
            style: context.textTheme.headlineSmall?.copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            project.subtitle ?? '',
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors.primary,
            ),
          ),
          SizedBox(
            width: 556,
            child: Text(
              project.description,
              style: context.textTheme.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
}
