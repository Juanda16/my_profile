import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/features/portfolio/domain/entities/skill/skill.dart';

import '../cubit/portfolio_cubit.dart';
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // --- Summary Section ---
                    // This is the main entry point of the portfolio
                    SectionWidget(
                      key: sectionKeys[Section.home],
                      child: const Summary(),
                    ),

                    // --- Bio/About Section ---
                    SectionWidget(
                      key: sectionKeys[Section.about],
                      child: Text('About Me',
                          style: Theme.of(context).textTheme.headlineMedium),
                    ), // Example
                    SectionWidget(
                      key: sectionKeys[Section.services],
                      child: Text('Services',
                          style: Theme.of(context).textTheme.headlineMedium),
                    ),
                    const SizedBox(height: 8),
                    SectionWidget(
                        key: sectionKeys[Section.resume],
                        child: Text('Resume',
                            style: Theme.of(context).textTheme.headlineMedium)),
                    const SizedBox(height: 24),
                    Text(state.bio),
                    const SizedBox(height: 24),

                    // --- Skills Section ---
                    SectionWidget(
                      key: sectionKeys[Section.skills],
                      child: Column(
                        children: <Widget>[
                          Text('Skills',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          const SizedBox(height: 8),
                          Wrap(
                            // Good for responsiveness
                            spacing: 8.0,
                            runSpacing: 4.0,
                            children: state.skills
                                //.map((skill) => SkillChip(skill: skill))
                                .map((Skill skill) =>
                                    Chip(label: Text(skill.name)))
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    SectionWidget(
                      key: sectionKeys[Section.experience],
                      child: Column(
                        children: <Widget>[
                          Text('Experience',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          const SizedBox(height: 8),
                          ListView.builder(
                            // Use ListView.builder for dynamic lists
                            shrinkWrap:
                                true, // Important inside SingleChildScrollView
                            physics:
                                const NeverScrollableScrollPhysics(), // Disable scrolling
                            itemCount: state.experiences.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                              margin: const EdgeInsets.only(bottom: 16.0),
                              child: ListTile(
                                title: Text(state.experiences[index].title),
                                subtitle: Text(
                                    '${state.experiences[index].description} - ${state.experiences[index].startDate}'),
                                trailing:
                                    Text(state.experiences[index].description),
                              ),
                            ),
                            // return ExperienceTile(
                            //     experience: state.experiences[index]);
                          ),
                        ],
                      ),
                    ),

                    // --- Experience Section ---

                    const SizedBox(height: 24),

                    // --- Projects Section ---
                    SectionWidget(
                      key: sectionKeys[Section.projects],
                      child: Column(
                        children: <Widget>[
                          Text('Projects / Services',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          const SizedBox(height: 8),
                          // Use ListView or GridView for projects
                          ListView.builder(
                            shrinkWrap:
                                true, // Important inside SingleChildScrollView
                            physics:
                                const NeverScrollableScrollPhysics(), // Disable scrolling
                            itemCount: state.projects.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Container(
                              margin: const EdgeInsets.only(bottom: 16.0),
                              child: ListTile(
                                title: Text(state.projects[index].title),
                                subtitle: Text(
                                    '${state.projects[index].description} - ${state.projects[index].startDate}'),
                                trailing:
                                    Text(state.projects[index].description),
                              ),
                            ),
                            //return ProjectCard(project: state.projects[index]);
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),

                    // --- Contact Section ---
                    SectionWidget(
                      key: sectionKeys[Section.contact],
                      child: Column(
                        children: <Widget>[
                          Text('Contact',
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          const SizedBox(height: 8),
                          // Add contact info (Email, LinkedIn, Phone?)
                          // Use url_launcher to open links
                          ListTile(
                            leading: const Icon(Icons.email),
                            title: const Text(
                                'your.email@example.com'), // Your Email
                            onTap: () {/* Use url_launcher to open mailto: */},
                          ),
                          ListTile(
                            leading: const Icon(Icons
                                .link), // Replace with LinkedIn Icon if desired
                            title:
                                const Text('LinkedIn Profile'), // Your LinkedIn
                            onTap: () {
                              /* Use url_launcher to open LinkedIn URL */
                            },
                          ),
                          // Add other contact methods
                          const SizedBox(height: 24),
                        ],
                      ),
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
