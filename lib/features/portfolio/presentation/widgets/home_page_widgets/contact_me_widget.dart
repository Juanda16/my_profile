import 'package:flutter/material.dart';

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
