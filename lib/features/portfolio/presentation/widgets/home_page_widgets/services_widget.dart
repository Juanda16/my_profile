import 'package:flutter/material.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';
import 'package:my_profile/core/style/style.dart';

/// A widget that displays a section showcasing services offered.
///
/// This widget presents a title, a descriptive text, and a list of
/// individual service widgets, each detailing a specific service.
class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _IntroductoryText(),
          SizedBox(height: AppSpacing.medium),
          _ServicesTitle(),
          SizedBox(height: AppSpacing.large),
          _ServicesGrid(),
        ],
      );
}

/// A widget that displays the introductory text for the services section.
class _IntroductoryText extends StatelessWidget {
  const _IntroductoryText();

  @override
  Widget build(BuildContext context) => Text(
        '\n${translate.home_page.slogan.toUpperCase()}\n',
        textAlign: TextAlign.center,
        style: context.textTheme.bodyLarge?.copyWith(letterSpacing: 4),
      );
}

/// A widget that displays the title for the services section.
class _ServicesTitle extends StatelessWidget {
  const _ServicesTitle();

  @override
  Widget build(BuildContext context) => Text.rich(
        translate.home_page.my_special_services(
          specialServices: TextSpan(
            text: '${translate.home_page.special_services}\n',
            style: context.textTheme.displayMedium?.copyWith(
              color: AppColors.primary,
            ),
          ),
          development: TextSpan(
            text: translate.home_page.development,
            style: context.textTheme.displayMedium?.copyWith(
              color: AppColors.primary,
            ),
          ),
        ),
        style: context.textTheme.displaySmall,
        textAlign: TextAlign.center,
      );
}

/// A widget that displays the services in a grid layout.
class _ServicesGrid extends StatelessWidget {
  const _ServicesGrid();

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: AppSpacing.medium,
        runSpacing: AppSpacing.medium,
        children: _servicesData
            .map((_ServiceData service) => _ServiceWidget(service: service))
            .toList(),
      );

  /// A list of data representing the services offered.
  static const List<_ServiceData> _servicesData = <_ServiceData>[
    _ServiceData(
      icon: Icons.web,
      title: 'WEB DEVELOPMENT',
      description:
          'Modern and mobile-ready website\nthat will help you reach all of your\nmarketing.',
    ),
    _ServiceData(
      icon: Icons.design_services, // Replace with an appropriate icon
      title: 'UI/UX DESIGN',
      description:
          'User-centered design that focuses on usability and aesthetics to improve user satisfaction.',
    ),
    _ServiceData(
      icon: Icons.mobile_friendly, // Replace with an appropriate icon
      title: 'MOBILE DEVELOPMENT',
      description:
          'Native and cross-platform mobile apps for iOS and Android, built for performance.',
    ),
    _ServiceData(
      icon: Icons.cloud, // Replace with an appropriate icon
      title: 'CLOUD SOLUTIONS',
      description:
          'Scalable and reliable cloud solutions tailored to your business needs.',
    ),
    _ServiceData(
      icon: Icons.security, // Replace with an appropriate icon
      title: 'CYBERSECURITY',
      description:
          'Protect your digital assets with robust security measures and risk assessments.',
    ),
    _ServiceData(
      icon: Icons.data_object, // Replace with an appropriate icon
      title: 'DATABASE DESIGN',
      description:
          'Efficient and well-structured database systems to manage your data effectively.',
    ),
  ];
}

/// A data class representing a single service.
class _ServiceData {
  final IconData icon;
  final String title;
  final String description;

  const _ServiceData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

/// A widget that displays a single service item.
class _ServiceWidget extends StatelessWidget {
  final _ServiceData service;

  const _ServiceWidget({required this.service});

  @override
  Widget build(BuildContext context) => Container(
        width: 400,
        height: 300,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(AppSpacing.small),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.large),
          child: Column(
            children: <Widget>[
              Icon(
                service.icon,
                color: AppColors.primary,
                size: 60,
              ),
              const SizedBox(height: AppSpacing.medium),
              Text(
                service.title,
                style: context.textTheme.titleMedium,
              ),
              const SizedBox(height: AppSpacing.medium),
              Text(
                service.description,
                textAlign: TextAlign.center,
                style: context.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      );
}
