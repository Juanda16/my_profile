import 'package:flutter/material.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';

final Map<String, GlobalKey> sectionKeys =
    <String, GlobalKey<State<StatefulWidget>>>{
  'home': GlobalKey(),
  'about': GlobalKey(),
  'services': GlobalKey(),
  'resume': GlobalKey(),
  'skills': GlobalKey(),
  'projects': GlobalKey(),
  'contact': GlobalKey(),
};

class NavbarWeb extends StatefulWidget implements PreferredSizeWidget {
  const NavbarWeb({super.key});

  @override
  State<NavbarWeb> createState() => _NavbarWebState();

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + 40.0); // Adjust height as needed
}

class _NavbarWebState extends State<NavbarWeb> {
  String? _selectedSection = 'home';

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return AppBar(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      toolbarHeight: kToolbarHeight + 40.0,
      title: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogo(colorScheme),
            _buildNavItems(colorScheme),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(ColorScheme colorScheme) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: 'J',
            style: TextStyle(
              color: colorScheme.primary,
              fontSize: 32,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'uan ',
            style: TextStyle(
              color: colorScheme.onSurface.withValues(alpha: 0.65),
              fontSize: 32,
              fontFamily: 'Pacific',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'A',
            style: TextStyle(
              color: colorScheme.primary,
              fontSize: 32,
              fontFamily: 'Pacific',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'rismendy',
            style: TextStyle(
              color: colorScheme.onSurface.withValues(alpha: 0.65),
              fontSize: 32,
              fontFamily: 'Pacific',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItems(ColorScheme colorScheme) {
    return Row(
      children: <Widget>[
        _navItem(translate.home_page.home, colorScheme, 'home'),
        _navItem(translate.home_page.about, colorScheme, 'about'),
        _navItem(translate.home_page.services, colorScheme, 'services'),
        _navItem(translate.home_page.resume, colorScheme, 'resume'),
        _navItem(translate.home_page.skills, colorScheme, 'skills'),
        _navItem(translate.home_page.projects, colorScheme, 'projects'),
        _navItem(translate.home_page.contact, colorScheme, 'contact'),
        _hireMeButton(colorScheme),
      ],
    );
  }

  Widget _navItem(String text, ColorScheme colorScheme, String section) {
    final bool isSelected = _selectedSection == section;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            _scrollToSection(section);
            setState(() {
              _selectedSection = section;
            });
          },
          child: Text(
            text,
            style: TextStyle(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurface.withValues(alpha: 0.65),
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _hireMeButton(ColorScheme colorScheme) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // Handle Hire Me action (e.g., navigate to a contact form or initiate email)
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            translate.home_page.hire_me,
            style: TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ),
    );
  }

  void _scrollToSection(String section) {
    final GlobalKey<State<StatefulWidget>>? key = sectionKeys[section];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }
}
