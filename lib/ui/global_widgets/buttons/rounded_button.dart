import 'package:flutter/material.dart';
import 'package:my_profile/core/style/style.dart';

/// A reusable widget for creating rounded buttons.
///
/// This button offers a consistent style throughout the application,
/// utilizing the project's theme for colors, text styles, and spacing.
/// It supports customization of text, background color, and border color.
class RoundedButton extends StatelessWidget {
  /// The text to display on the button.
  final String text;

  /// The background color of the button. If not provided, defaults to transparent.
  final Color? backgroundColor;

  /// The border color of the button. If not provided, defaults to no border.
  final Color? borderColor;

  /// The text color of the button. If not provided, defaults to white when a
  /// background color is set or the border color when no background color
  /// is set.
  final Color? textColor;

  /// Callback function to be executed when the button is pressed.
  final VoidCallback onPressed;

  /// Creates a [RoundedButton].
  ///
  /// Requires the [text] and [onPressed] parameters. The [backgroundColor]
  /// and [borderColor] are optional and will use default values if not specified.
  const RoundedButton({
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: onPressed,
      style: _buildButtonStyle(theme),
      child: Text(text),
    );
  }

  /// Constructs the `ButtonStyle` for the button, merging provided parameters
  /// with default styles.
  ButtonStyle _buildButtonStyle(ThemeData theme) => ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor ??
            (backgroundColor != null ? AppColors.textPrimary : borderColor),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        textStyle: theme.textTheme.labelLarge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.small),
          side: _buildBorderSide(),
        ),
      );

  /// Creates the `BorderSide` for the button based on the provided [borderColor].
  ///
  /// Returns a `BorderSide` with the specified color and a width of 1 if
  /// [borderColor] is not null. Otherwise, returns `BorderSide.none` to indicate
  /// no border.
  BorderSide _buildBorderSide() => borderColor != null
      ? BorderSide(color: borderColor!, width: 1)
      : BorderSide.none;
}
