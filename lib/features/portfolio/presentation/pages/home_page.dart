import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_profile/core/style/style.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/about_me_widget.dart';
import 'package:my_profile/features/portfolio/presentation/widgets/home_page_widgets/resume_widget.dart';

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
                    ), // Example
                    SectionWidget(
                      key: sectionKeys[Section.services],
                      child: const Services(),
                    ),
                    const SizedBox(height: 8),
                    SectionWidget(
                        key: sectionKeys[Section.resume],
                        child: const ResumeWidget()),

                    // --- Skills Section ---
                    SectionWidget(
                      key: sectionKeys[Section.skills],
                      child: const SkillsWidget(),
                    ),
                    const SizedBox(height: 24),

                    // --- Experience Section ---

                    const SizedBox(height: 24),

                    // --- Projects Section ---
                    SectionWidget(
                        key: sectionKeys[Section.projects],
                        child: const LatestProjects()),

                    // --- Contact Section ---
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

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) => const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'I like to make things easy and fun\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 1.67,
              letterSpacing: 0.72,
            ),
          ),
          Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: 'My ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
                TextSpan(
                  text: 'Special Services',
                  style: TextStyle(
                    color: Color(0xFFFF014F),
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
                TextSpan(
                  text: ' For your\nBusiness ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
                TextSpan(
                  text: 'Development\n',
                  style: TextStyle(
                    color: Color(0xFFFF014F),
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: <Widget>[
              ServiceWidget(),
              ServiceWidget(),
              ServiceWidget(),
              ServiceWidget(),
              ServiceWidget(),
              ServiceWidget(),
            ],
          )
        ],
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

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Container(
              decoration: ShapeDecoration(
                color: const Color(0xFF1E1E1E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.web,
                      color: Color(0xFFFF014F),
                      size: 60,
                    ),
                    spaceV16,
                    Text(
                      'WEB DEVELOPMENT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 0.60,
                      ),
                    ),
                    spaceV16,
                    Text(
                      'Modern and mobile-ready website\nthat will help you reach all of your\nmarketing.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.54,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      );
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: <Widget>[
          SizedBox(
            width: 335,
            height: 40,
            child: Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: 'My ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.67,
                      letterSpacing: 0.72,
                    ),
                  ),
                  TextSpan(
                    text: 'Talent',
                    style: TextStyle(
                      color: Color(0xFFFF014F),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 1.67,
                      letterSpacing: 0.72,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'professional skills',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              letterSpacing: 1.20,
            ),
          ),
          spaceV24,
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: <Widget>[
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
              SkillBoxWidget(),
            ],
          )
        ],
      );
}

class SkillBoxWidget extends StatelessWidget {
  const SkillBoxWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            width: 189,
            height: 200,
            child: Container(
              width: 189,
              height: 200,
              decoration: ShapeDecoration(
                color: const Color(0xFF1E1E1E) /* border-black-grey */,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 77,
                      height: 82,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('https://placehold.co/77x82.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const Text(
                      'Javascript',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

class LatestProjects extends StatelessWidget {
  const LatestProjects({super.key});

  @override
  Widget build(BuildContext context) => const Column(
        children: <Widget>[
          SizedBox(
            width: 335,
            height: 40,
            child: Text(
              'Latest Works',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.67,
                letterSpacing: 0.72,
              ),
            ),
          ),
          Text.rich(
            TextSpan(
              children: <InlineSpan>[
                TextSpan(
                  text: 'Explore My Popular ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
                TextSpan(
                  text: 'Projects',
                  style: TextStyle(
                    color: Color(0xFFFF014F),
                    fontSize: 40,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.20,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          spaceV24,
          ProjectDescriptionWidget(),
          ProjectDescriptionWidget(),
          ProjectDescriptionWidget(),
          ProjectDescriptionWidget(),
          ProjectDescriptionWidget(),
        ],
      );
}

class ProjectDescriptionWidget extends StatelessWidget {
  const ProjectDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 616,
              height: 421,
              decoration: ShapeDecoration(
                color: const Color(0x9E1E1E1E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Container(
                width: 593,
                height: 341,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://placehold.co/593x341.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Website',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF014F),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.60,
                ),
              ),
              Text(
                'Mount Kenya \nWildlife Conservancy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.20,
                ),
              ),
              SizedBox(
                width: 556,
                height: 92,
                child: Text(
                  'A non-profit trust dedicated to preserving the environment and the wildlife within.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 2,
                    letterSpacing: 0.60,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
}

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            width: 1319,
            height: 745.55,
            child: Stack(
              children: <Widget>[
                const Positioned(
                  left: 10,
                  top: 56,
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Let’s Talk For your\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                        TextSpan(
                          text: 'Next Projects',
                          style: TextStyle(
                            color: Color(0xFFFF014F),
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 183,
                  child: SizedBox(
                    width: 367,
                    height: 160,
                    child: Text(
                      'Discuss a project or just want to say hi? Connect with me via email or through a phone call.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 2,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 478.78,
                  top: 664.69,
                  child: Container(
                    width: 251.98,
                    height: 76.47,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFF014F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 512.82,
                  top: 689.54,
                  child: SizedBox(
                    width: 235.18,
                    height: 27.39,
                    child: Text(
                      'Send Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 0,
                  child: Text(
                    'Get In Touch',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 363,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 423,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 484,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 544,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 605,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 545,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 606,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                const Positioned(
                  left: 61,
                  top: 354,
                  child: Text(
                    '5+ Years of Experience',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                const Positioned(
                  left: 63,
                  top: 414,
                  child: Text(
                    'Professional Web Designer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                const Positioned(
                  left: 63,
                  top: 475,
                  child: Text(
                    'Mobile Apps Design',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                const Positioned(
                  left: 63,
                  top: 535,
                  child: Text(
                    'Technical Mentor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                const Positioned(
                  left: 63,
                  top: 596,
                  child: Text(
                    'Fullstack Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 2,
                      letterSpacing: 0.60,
                    ),
                  ),
                ),
                Positioned(
                  left: 474,
                  top: 111,
                  child: Container(
                    width: 397,
                    height: 81,
                    decoration: ShapeDecoration(
                      color: const Color(0x9E1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 474,
                  top: 294,
                  child: Container(
                    width: 397,
                    height: 81,
                    decoration: ShapeDecoration(
                      color: const Color(0x9E1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 474,
                  top: 477,
                  child: Container(
                    width: 845,
                    height: 148,
                    decoration: ShapeDecoration(
                      color: const Color(0x9E1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 922,
                  top: 108,
                  child: Container(
                    width: 397,
                    height: 82,
                    decoration: ShapeDecoration(
                      color: const Color(0x9E1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 922,
                  top: 291,
                  child: Container(
                    width: 397,
                    height: 81,
                    decoration: ShapeDecoration(
                      color: const Color(0x9E1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 479,
                  top: 55,
                  child: SizedBox(
                    width: 162,
                    height: 38,
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 479,
                  top: 237,
                  child: SizedBox(
                    width: 237,
                    height: 39,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 479,
                  top: 421,
                  child: SizedBox(
                    width: 185,
                    height: 38,
                    child: Text(
                      'Message',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 922,
                  top: 55,
                  child: SizedBox(
                    width: 222,
                    height: 38,
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 922,
                  top: 237,
                  child: SizedBox(
                    width: 152,
                    height: 39,
                    child: Text(
                      'Subject',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 495,
                  top: 134,
                  child: SizedBox(
                    width: 356,
                    height: 38,
                    child: Text(
                      'Tery Humfy D. Tawez',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 495,
                  top: 317,
                  child: SizedBox(
                    width: 338,
                    height: 38,
                    child: Text(
                      '+821 (123) 45678',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 495,
                  top: 500,
                  child: SizedBox(
                    width: 367,
                    height: 39,
                    child: Text(
                      'Write your message...',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 943,
                  top: 131,
                  child: SizedBox(
                    width: 268,
                    height: 39,
                    child: Text(
                      'teryy@humfy.org',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 943,
                  top: 314,
                  child: SizedBox(
                    width: 178,
                    height: 38,
                    child: Text(
                      'Subject',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 689,
                  child: Container(
                    width: 55.35,
                    height: 55.35,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 78.21,
                  top: 689,
                  child: Container(
                    width: 55.35,
                    height: 55.35,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 161.24,
                  top: 689,
                  child: Container(
                    width: 55.35,
                    height: 55.35,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 240.65,
                  top: 690.20,
                  child: Container(
                    width: 55.35,
                    height: 55.35,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 91.45,
                  top: 703.44,
                  child: Container(
                    width: 28.88,
                    height: 28.88,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 174.47,
                  top: 702.24,
                  child: Container(
                    width: 28.88,
                    height: 28.88,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
                Positioned(
                  left: 253.89,
                  top: 705.85,
                  child: Container(
                    width: 28.88,
                    height: 28.88,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                    child: const Stack(),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
