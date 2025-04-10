import 'package:flutter/material.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          SizedBox(
            width: 1359,
            height: 2000,
            child: Stack(
              children: <Widget>[
                const Positioned(
                  left: 494,
                  top: 0,
                  child: SizedBox(
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
                            text: 'Resume',
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
                ),
                const Positioned(
                  left: 517,
                  top: 2688,
                  child: SizedBox(
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
                ),
                const Positioned(
                  left: 432,
                  top: 71,
                  child: Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: 'Real ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                        TextSpan(
                          text: 'Problem',
                          style: TextStyle(
                            color: Color(0xFFFF014F),
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                        TextSpan(
                          text: 'Solutions\n',
                          style: TextStyle(
                            color: Color(0xFFFF014F),
                            fontSize: 40,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.20,
                          ),
                        ),
                        TextSpan(
                          text: 'Experience\n',
                          style: TextStyle(
                            color: Colors.white,
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
                ),
                const Positioned(
                  left: 409,
                  top: 2752,
                  child: Text.rich(
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
                ),
                Positioned(
                  left: 528.99,
                  top: 120.97,
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 774,
                  child: Container(
                    width: 635,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 655,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 705,
                  top: 655,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 703,
                  top: 802,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 702,
                  top: 955,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 703,
                  top: 1109,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 703,
                  top: 1264,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 702,
                  top: 1417,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 7,
                  top: 363,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 702,
                  top: 363,
                  child: Container(
                    width: 600,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 635,
                  top: 774,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1332,
                  top: 774,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1332,
                  top: 928,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1331,
                  top: 1081,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1332,
                  top: 1235,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1332,
                  top: 1390,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1331,
                  top: 1543,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 100,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 635,
                  top: 620,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 230,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1330,
                  top: 620,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 230,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 172,
                  top: 273,
                  child: Text(
                    'Education',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.90,
                    ),
                  ),
                ),
                const Positioned(
                  left: 858,
                  top: 273,
                  child: Text(
                    'Experience',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.90,
                    ),
                  ),
                ),
                const Positioned(
                  left: 24,
                  top: 391,
                  child: Text(
                    'Moringa School',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 715,
                  top: 391,
                  child: Text(
                    'Weza Prosoft Limited',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 23,
                  top: 674,
                  child: Text(
                    'Jomo Kenyatta University of Agriculture\nand Technology (JKUAT)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 718,
                  top: 697,
                  child: Text(
                    'Paya Ventures Ltd (Paya Finance)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 718,
                  top: 850,
                  child: Text(
                    'Moringa School',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 717,
                  top: 1004,
                  child: Text(
                    'Brance Technologies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 715,
                  top: 1157,
                  child: Text(
                    'Premiersoft Technologies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 715,
                  top: 1312,
                  child: Text(
                    'Korean Kenya Solar Limited',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 714,
                  top: 1465,
                  child: Text(
                    'Web Cloud Ltd Kenya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.72,
                    ),
                  ),
                ),
                const Positioned(
                  left: 13,
                  top: 455,
                  child: SizedBox(
                    width: 262,
                    child: Text(
                      'Software Development',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 708,
                  top: 453,
                  child: SizedBox(
                    width: 495,
                    child: Text(
                      'Software Engineer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.72,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 495,
                  top: 458,
                  child: SizedBox(
                    width: 122,
                    child: Text(
                      '2021 - 2021',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Kalam',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.60,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 1098,
                  top: 457,
                  child: SizedBox(
                    width: 216,
                    child: Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Oct 2020 - ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Kalam',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.60,
                            ),
                          ),
                          TextSpan(
                            text: 'PRESENT',
                            style: TextStyle(
                              color: Color(0xFFFF014F),
                              fontSize: 20,
                              fontFamily: 'Kalam',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.60,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Positioned(
                  left: 13,
                  top: 529,
                  child: Text(
                    'Diligently attended software development courses,  advancing\nskills and knowledge. With this being a continuous improvement,\ngot to learn to contribute effectively in software development roles.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
                const Positioned(
                  left: 708,
                  top: 529,
                  child: Text(
                    'Create of web applications that maintains high standards of code\nquality and smart application design to ensure application\nperformance, uptime, and scale.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.54,
                    ),
                  ),
                ),
                Positioned(
                  left: 609,
                  top: 619,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1304,
                  top: 619,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1304,
                  top: 773,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1303,
                  top: 926,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1304,
                  top: 1080,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1304,
                  top: 1235,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1303,
                  top: 1388,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 608,
                  top: 335,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1303,
                  top: 335,
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: const ShapeDecoration(
                      color: Color(0x00D9D9D9),
                      shape: OvalBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1320,
                  top: 648,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1320,
                  top: 802,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 625,
                  top: 646,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1319,
                  top: 955,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1320,
                  top: 1109,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1320,
                  top: 1264,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1319,
                  top: 1417,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1330,
                  top: 657,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1330,
                  top: 811,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 635,
                  top: 655,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1329,
                  top: 964,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1330,
                  top: 1118,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1330,
                  top: 1273,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1329,
                  top: 1426,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 624,
                  top: 364,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 1319,
                  top: 364,
                  child: Container(
                    width: 20,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF014F),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
