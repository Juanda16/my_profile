import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_profile/core/images/images.dart';
import 'package:my_profile/core/style/style.dart';

// Summary widget (main entry point)
class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.background,
      width: screenWidth,
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.medium),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _SummaryContent(),
          ),
          // const Spacer(flex: 1),
          _ProfileImage(),
        ],
      ),
    );
  }
}

// Content on the left side of the summary
class _SummaryContent extends StatelessWidget {
  static const String summaryText =
      '''Hardware/Software Integration Specialist & Flutter Developer with 12+ years of combined experience in Mechatronics, Systems Engineering, and Software Development. 
My expertise lies in translating complex operational needs into integrated digital solutions, particularly focused on: Industrial IoT & Monitoring: Developing Flutter apps connected to custom or existing sensors/PLCs for real-time data visualization and control.
Legacy System Modernization: Creating modern, cross-platform interfaces (Flutter) for older industrial equipment.
Custom Electronics & Prototyping: Designing and integrating specialized hardware components with software counterparts.
Automation Solutions: Leveraging both hardware control and software interfaces (Flutter, Dart) for bespoke automation tasks.
Passionate about robotics and bridging the OT/IT gap.
Spanish (Native) | English (Fluent).''';

  const _SummaryContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.medium + 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildGreeting(),
          const SizedBox(height: AppSpacing.small),
          _buildName(),
          const SizedBox(height: AppSpacing.small),
          const _JobTitle(),
          const SizedBox(height: AppSpacing.medium),
          _buildSummaryText(),
          const SizedBox(height: AppSpacing.medium),
          _buildButtons(),
          const SizedBox(height: AppSpacing.medium),
          _buildSocialIcons(),
        ],
      ),
    );
  }

  Widget _buildGreeting() {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: '\nHELLO,',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              letterSpacing: 1.60,
            ),
          ),
          const TextSpan(
            text: ' ',
          ),
          TextSpan(
            text: 'MY NAME IS',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              letterSpacing: 1.60,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildName() {
    return const Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: 'Juan',
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 64,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              letterSpacing: 5.12,
            ),
          ),
          TextSpan(
            text: ' Arismendy',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 64,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
              letterSpacing: 5.12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryText() {
    return const Text(
      summaryText,
      style: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 18,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        letterSpacing: 0.60,
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      children: <Widget>[
        _RoundedButton(
          text: 'Download Resume',
          color: AppColors.primary,
          onPressed: () {
            // TODO: Implement download resume logic
          },
        ),
        const SizedBox(width: AppSpacing.medium),
        _RoundedButton(
          text: 'Contact Me',
          borderColor: AppColors.primary,
          onPressed: () {
            // TODO: Implement contact me logic
          },
        ),
      ],
    );
  }

  Widget _buildSocialIcons() {
    return Row(
      children: <Widget>[
        _SocialIconButton(
          icon: Icons.facebook,
          onPressed: () {
            // TODO: Implement Facebook link
          },
        ),
        const SizedBox(width: AppSpacing.small),
        _SocialIconButton(
          icon: Icons.mail,
          onPressed: () {
            // TODO: Implement Email link
          },
        ),
        const SizedBox(width: AppSpacing.small),
        _SocialIconButton(
          icon: Icons.facebook, // TODO: Replace with correct icon
          onPressed: () {
            // TODO: Implement other link
          },
        ),
        const SizedBox(width: AppSpacing.small),
        _SocialIconButton(
          icon: Icons.contact_mail,
          onPressed: () {
            // TODO: Implement contact link
          },
        ),
      ],
    );
  }
}

// Reusable job title widget
class _JobTitle extends StatelessWidget {
  const _JobTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Software Engineer',
      style: TextStyle(
        color: AppColors.textSecondary,
        fontSize: 24,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        letterSpacing: 1.92,
      ),
    );
  }
}

// Reusable rounded button widget
class _RoundedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? borderColor;
  final VoidCallback onPressed;

  const _RoundedButton({
    required this.text,
    this.color,
    this.borderColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: borderColor != null
                ? BorderSide(width: 1, color: borderColor!)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(AppSpacing.small),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color != null ? AppColors.textPrimary : borderColor,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.60,
          ),
        ),
      ),
    );
  }
}

// Reusable social icon button widget
class _SocialIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _SocialIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 46,
        height: 46,
        decoration: ShapeDecoration(
          color: AppColors.iconBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSpacing.small),
          ),
        ),
      ),
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      child: SizedBox(
        width: 400,
        height: 800,
        child: Stack(children: <Widget>[
          Center(
            child: CustomPaint(
              size: const Size(400, 400), // Set the size
              painter: SemiFilledCirclePainter(),
            ),
          ),
          Positioned(
            top: 20,
            child: Image.asset(
              Images.myPicture,
              fit: BoxFit.cover,
              width: 400,
            ),
          ),
        ]),
      ),
    );
  }
}

class SemiFilledCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint borderPaint = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final Paint fillPaint = Paint()
      ..color = Colors.pink
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
