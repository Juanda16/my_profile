import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/about_me_widget.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/contact_me_widget.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/latest_projects_widget.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/skills_widget.dart';

import '../cubit/portfolio_cubit.dart';
import '../widgets/home_page_widgets/services_widget.dart';
import '../widgets/navbar_web.dart';
import '../widgets/summary.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        //LocaleSettings.setLocale(AppLocale.es); // Set the locale for the app
        // Load data when the page is built if it's not already loaded/loading
        // Better place might be in main or router depending on app structure
        // context.read<PortfolioCubit>().loadData();
        appBar: NavbarWeb(),
        body: BlocBuilder<PortfolioCubit, PortfolioState>(
          builder: (BuildContext context, PortfolioState state) {
            if (state is PortfolioLoading || state is PortfolioInitial) {
              // Maybe load data here if initial?
              if (state is PortfolioInitial) {
                context.read<PortfolioCubit>().loadData();
              }
              return const Center(child: CircularProgressIndicator());
            } else if (state is PortfolioLoaded) {
              return SingleChildScrollView(
                //padding: const EdgeInsets.all(16.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // --- Summary Section ---
                    SectionWidget(
                      key: sectionKeys[Section.home],
                      child: const Summary(),
                    ),

                    // --- Bio/About Section ---
                    SectionWidget(
                      key: sectionKeys[Section.about],
                      child: const AboutMe(),
                    ),
                    SectionWidget(
                      key: sectionKeys[Section.services],
                      child: const Services(),
                    ),
                    const SizedBox(height: 8),
                    // SectionWidget(
                    //     key: sectionKeys[Section.resume],
                    //     child: const ResumeWidget()),
                    // --- Skills Section ---
                    SectionWidget(
                      key: sectionKeys[Section.skills],
                      child: const SkillsWidget(),
                    ),
                    const SizedBox(height: 24),
                    // --- Projects Section ---
                    SectionWidget(
                        key: sectionKeys[Section.projects],
                        child: const LatestProjects()),

                    /// --- Contact Section ---
                    SectionWidget(
                      key: sectionKeys[Section.contact],
                      child: const ContactMe(),
                    )
                  ],
                ),
              );
            } else if (state is PortfolioError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return const Center(child: Text('Something went wrong'));
          },
        ),
      );
}

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(20),
        child: child,
      );
}
