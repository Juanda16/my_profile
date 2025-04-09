import 'package:flutter/material.dart';
import 'package:my_profile/core/assets/icons/social_media.dart';
import 'package:my_profile/core/style/style.dart';

/// A reusable widget for creating social media icon buttons.
///
/// This button displays a social media icon with a consistent style,
/// utilizing the project's theme for colors, spacing, and shape.
class SocialMediaButton extends StatelessWidget {
  /// The social media icon to display.
  final SocialIcon icon;

  /// Callback function to be executed when the button is pressed.
  final VoidCallback onPressed;

  /// The background color of the button. If not provided, defaults to transparent.
  final Color? backgroundColor;

  /// The border color of the button. If not provided, defaults to no border.
  final Color? iconColor;

  /// Creates a [SocialMediaButton].
  ///
  /// Requires the [icon] and [onPressed] parameters.
  const SocialMediaButton({
    required this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.iconColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        style: _buildButtonStyle(),
        icon: SocialMediaIcons.build(
          icon,
          color: iconColor,
        ),
      );

  /// Constructs the `ButtonStyle` for the button, using project styles.
  ButtonStyle _buildButtonStyle() => IconButton.styleFrom(
        backgroundColor: AppColors.iconBackground,
        padding: const EdgeInsets.all(16.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.small),
        ),
      );
}
