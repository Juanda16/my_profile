import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_profile/core/assets/icons/social_media.dart';
import 'package:my_profile/core/assets/images/images.dart';
import 'package:my_profile/core/i18n/generated/translations.g.dart';
import 'package:my_profile/core/style/style.dart';
import 'package:my_profile/ui/global_widgets/buttons/rounded_button.dart';
import 'package:my_profile/ui/global_widgets/buttons/social_media_button.dart';

/// A widget that displays a summary of the user's professional profile.
///
/// This widget is the main entry point for the summary section, presenting
/// the user's name, job title, a brief overview of their experience,
/// and links to download their CV and contact them. It also includes
/// social media icons and a profile image.
class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) => const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _SummaryContent(),
          ),
          spaceH32,
          _ProfileImage(),
        ],
      );
}

/// The content displayed on the left side of the summary section.
///
/// This includes the greeting, name, job title, summary text, buttons
/// for downloading the CV and contacting, and social media icons.
class _SummaryContent extends StatelessWidget {
  // Extracted Summary Text as a Constant
  static const String _summaryText =
      '''Experienced Hardware/Software Integration Specialist and Flutter Developer (12+ years in Mechatronics, Systems Engineering, and Software Development). Skilled in creating integrated digital solutions, including Industrial IoT, legacy system modernization (Flutter), custom electronics/prototyping,  and automation (Flutter, Dart). Focus on bridging the OT/IT gap. Fluent in Spanish and English.''';

  const _SummaryContent();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(AppSpacing.medium),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildGreeting(context),
            const SizedBox(height: AppSpacing.small),
            _buildName(context),
            const SizedBox(height: AppSpacing.small),
            const _JobTitle(),
            const SizedBox(height: AppSpacing.medium),
            _buildSummaryText(context),
            const SizedBox(height: AppSpacing.medium),
            _buildButtons(context),
            const SizedBox(height: AppSpacing.large),
            _buildSocialIcons(context),
          ],
        ),
      );

  /// Builds the greeting text.
  Widget _buildGreeting(BuildContext context) => Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
              text: translate.home_page.hello,
              style: context.textTheme.titleSmall?.copyWith(
                letterSpacing: 4,
              ),
            ),
          ],
        ),
      );

  /// Builds the user's name text.
  Widget _buildName(BuildContext context) => Text.rich(
        TextSpan(
          children: <InlineSpan>[
            TextSpan(
                text: 'Juan David',
                style: context.textTheme.displaySmall?.copyWith(
                    color: AppColors.primary, fontWeight: FontWeight.bold)),
            TextSpan(
              text: ' Arismendy',
              style: context.textTheme.displaySmall,
            ),
          ],
        ),
      );

  /// Builds the summary text.
  Widget _buildSummaryText(BuildContext context) => Text(
        _summaryText,
        style: context.textTheme.bodyLarge,
        textAlign: TextAlign.justify,
        overflow: TextOverflow.visible,
        softWrap: true,
      );

  /// Builds the buttons for downloading the CV and contacting the user.
  Widget _buildButtons(BuildContext context) => Row(
        children: <Widget>[
          RoundedButton(
            text: translate.home_page.download_cv,
            backgroundColor: AppColors.primary,
            onPressed: () {
              // TODO: Implement download resume logic
            },
          ),
          const SizedBox(width: AppSpacing.medium),
          RoundedButton(
            text: translate.home_page.contact_me,
            borderColor: AppColors.primary,
            textColor: AppColors.textPrimary,
            onPressed: () {
              // TODO: Implement contact me logic
            },
          ),
        ],
      );

  /// Builds the social media icon buttons.
  Widget _buildSocialIcons(BuildContext context) => Row(
        children: <Widget>[
          SocialMediaButton(
            icon: SocialIcon.linkedin,
            iconColor: AppColors.primary,
            onPressed: () {
              // TODO: Implement LinkedIn link
            },
          ),
          const SizedBox(width: AppSpacing.small),
          SocialMediaButton(
            icon: SocialIcon.mail,
            onPressed: () {
              // TODO: Implement Email link
            },
          ),
          const SizedBox(width: AppSpacing.small),
          SocialMediaButton(
            icon: SocialIcon.twitter,
            onPressed: () {
              // TODO: Implement other link
            },
          ),
          const SizedBox(width: AppSpacing.small),
          SocialMediaButton(
            icon: SocialIcon.github,
            onPressed: () {
              // TODO: Implement contact link
            },
          ),
        ],
      );
}

/// A reusable widget for displaying the job title.
class _JobTitle extends StatelessWidget {
  const _JobTitle();

  @override
  Widget build(BuildContext context) => Text(
        translate.home_page.software_engineer,
        style: context.textTheme.titleMedium,
      );
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: SizedBox(
          width: 400,
          height: 400,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomPaint(
                  size: const Size(400, 400),
                  painter: _SemiFilledCirclePainter(
                    color: AppColors.primary,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipOval(
                  clipper: _CircleClipper(diameter: 400),
                  child: Image.asset(
                    Images.myPicture,
                    fit: BoxFit.cover,
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

/// A custom painter for drawing a semi-filled circle.
class _SemiFilledCirclePainter extends CustomPainter {
  _SemiFilledCirclePainter({this.color = AppColors.primary});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint borderPaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final Paint fillPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double radius = size.width / 2;
    final Offset center = Offset(radius, radius);

    // Draw the circle outline
    canvas.drawCircle(center, radius, borderPaint);

    // Create a path for the bottom filled section
    Path path = Path()
      ..addArc(Rect.fromCircle(center: center, radius: radius), pi / 4,
          pi / 2) // Half-circle bottom
      ..close();

    // Clip the path to ensure it's inside the circle
    canvas.save();
    canvas.clipPath(
        Path()..addOval(Rect.fromCircle(center: center, radius: radius)));
    canvas.drawPath(path, fillPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// A custom clipper that clips its child in a circle.
class _CircleClipper extends CustomClipper<Rect> {
  /// The diameter of the circle used for clipping.
  final double diameter;

  /// Creates a [_CircleClipper] with the given [diameter].
  _CircleClipper({required this.diameter});

  @override
  Rect getClip(Size size) {
    // Calculate the radius of the circle.
    final double radius = diameter / 2;

    // Calculate the center point of the circle.  We'll center it within the
    // available size.
    final Offset center = Offset(size.width / 2, (size.height / 2) - 4);

    // Create a rectangle that represents the clipping region (a circle in this case).
    // We use Rect.fromCircle to create a rectangle enclosing the circle.
    return Rect.fromCircle(center: center, radius: radius);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) =>
      (oldClipper as _CircleClipper).diameter != diameter;
}
