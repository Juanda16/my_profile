import '../infrastructure/datasources_contract/portfolio_local_datasource.dart';

class PortfolioLocalDataSourceImpl implements PortfolioLocalDataSource {
  @override
  Future<String> getProfileBioData() async {
    await Future.delayed(const Duration(milliseconds: 100)); // Simulate network
    return """
    Experienced Mechatronics Technologist & Systems Engineer with 10 years designing custom industrial electronics and controllers. 
    Now a passionate Flutter developer bridging the physical and digital worlds. 
    Seeking opportunities to leverage my unique hybrid hardware/software skills to build innovative solutions independently.
    Based in La Ceja, Antioquia.
    """; // <-- YOUR ACTUAL BIO HERE
  }

  @override
  Future<List<Map<String, dynamic>>> getExperienceData() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // Replace with your actual experience
    return [
      {
        'title': 'Flutter Developer',
        'company': 'Previous Company SA',
        'startDate': '2022-01-01',
        'endDate': '2023-01-01',
        'description':
            'Developed cross-platform mobile applications using Flutter...'
      },
      {
        'title': 'Automation & Control Engineer',
        'company': 'Hardware Design Corp',
        'startDate': '2012-01-01',
        'endDate': '2022-01-01',
        'description':
            'Designed, programmed, and installed custom electronic controllers (PLC, microcontrollers) for various industrial clients...'
      },
    ];
  }

  @override
  Future<List<Map<String, dynamic>>> getProjectData() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // Replace with your actual projects (or the portfolio project you build!)
    return [
      {
        'title': 'Hybrid IoT Monitoring App (Demo)',
        'description':
            'A conceptual project showcasing real-time sensor data from an ESP32 displayed in a Flutter web dashboard.',
        'imageUrl':
            'assets/images/project_iot_demo.png', // Add images to assets folder
        'technologies': ['Flutter', 'Dart', 'ESP32', 'MQTT', 'Bloc/Cubit']
      },
    ];
  }

  @override
  Future<List<Map<String, dynamic>>> getSkillData() async {
    await Future.delayed(const Duration(milliseconds: 100));
    // Replace with your skills
    return [
      {
        'name': 'Flutter',
        'level': 0.9
      }, // Level 0.0 to 1.0 for potential display
      {'name': 'Dart', 'level': 0.85},
      {'name': 'Bloc/Cubit', 'level': 0.8},
      {'name': 'Electronic Design (PCB)', 'level': 0.9},
      {'name': 'Microcontroller Programming (C/C++)', 'level': 0.85},
      {'name': 'PLC Programming (Ladder/ST)', 'level': 0.75},
      {'name': 'Automation Systems', 'level': 0.8},
      {'name': 'Industrial Protocols (Modbus, MQTT)', 'level': 0.7},
      {'name': 'Git', 'level': 0.8},
      {'name': 'Firebase', 'level': 0.6},
    ];
  }
}
