import 'package:flutter/material.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';

/// An enumeration representing the different sections of the homepage.
enum Section {
  home,
  about,
  services,
  resume,
  skills,
  experience,
  projects,
  contact,
}

Map<Section, GlobalKey<State<StatefulWidget>>> sectionKeys =
    <Section, GlobalKey<State<StatefulWidget>>>{};

/// A web-style navigation bar that sticks to the top of the screen.
///
/// It handles navigation between different sections of the homepage by
/// smoothly scrolling to the corresponding section when a navigation item is tapped.
class NavbarWeb extends StatefulWidget implements PreferredSizeWidget {
  NavbarWeb({super.key}) {
    sectionKeys = <Section, GlobalKey<State<StatefulWidget>>>{
      for (Section section in Section.values) section: GlobalKey(),
    };
  }

  @override
  State<NavbarWeb> createState() => _NavbarWebState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40.0);
}

class _NavbarWebState extends State<NavbarWeb> {
  /// A map that holds a GlobalKey for each navigable section on the homepage.
  ///
  /// These keys are used by the [_scrollToSection] method to smoothly scroll
  /// the target section into view.  Make sure that each section on your
  /// homepage has its `key` property set to the corresponding GlobalKey from this map.

  /// The currently selected section in the navigation bar.
  ///
  /// This is used to highlight the active navigation item.
  Section _selectedSection = Section.home;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return AppBar(
      backgroundColor: colorScheme.surface,
      elevation: 4,
      toolbarHeight: kToolbarHeight + 80.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
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

  /// Builds the logo displayed on the left side of the navigation bar.
  ///
  /// Uses Text.rich to style different parts of the logo text with varying
  /// colors, fonts, and weights based on the provided ColorScheme.
  Widget _buildLogo(ColorScheme colorScheme) => Text.rich(
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

  /// Builds the navigation items (links) on the right side of the navigation bar.
  ///
  /// Creates a row of [_navItem] widgets, each representing a section of the
  /// homepage, and a "Hire Me" button.
  Widget _buildNavItems(ColorScheme colorScheme) => Expanded(
        child: Wrap(
          alignment: WrapAlignment.end,
          spacing: 10,
          runSpacing: 20,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            _navItem(translate.home_page.home, colorScheme, Section.home),
            _navItem(translate.home_page.about, colorScheme, Section.about),
            _navItem(
                translate.home_page.services, colorScheme, Section.services),
            _navItem(translate.home_page.resume, colorScheme, Section.resume),
            _navItem(translate.home_page.skills, colorScheme, Section.skills),
            _navItem(
                translate.home_page.projects, colorScheme, Section.projects),
            _navItem(translate.home_page.contact, colorScheme, Section.contact),
            _hireMeButton(colorScheme),
          ],
        ),
      );

  /// Creates a single navigation item (link).
  ///
  /// The visual style (text color) changes based on whether the item corresponds
  /// to the currently selected section. When tapped, it scrolls to the
  /// specified section and updates the selected state.
  Widget _navItem(String text, ColorScheme colorScheme, Section section) {
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

  /// Builds the "Hire Me" button in the navigation bar.
  ///
  /// Currently, the button's `onTap` is a placeholder. You should replace
  /// the comment with the desired action, such as navigating to a contact
  /// form or initiating an email.
  Widget _hireMeButton(ColorScheme colorScheme) => MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            // TODO: Handle Hire Me action (e.g., navigate to a contact form or initiate email)
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

  /// Scrolls the page to the specified section.
  ///
  /// Uses the GlobalKey associated with the section to locate its position
  /// in the scrollable view and smoothly scroll it into view using
  /// `Scrollable.ensureVisible`. If the section's key is not found or
  /// its context is invalid, it does nothing.
  void _scrollToSection(Section section) {
    final GlobalKey<State<StatefulWidget>>? key = sectionKeys[section];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      print(
          'Error: Could not scroll to section $section, key context is null.'); // Debug print
    }
  }
}
