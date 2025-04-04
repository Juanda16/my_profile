import 'package:my_profile/features/portfolio/domain/repositories/portfolio_repository.dart';

import '../entities/entities.dart';

class GetPortfolioData {
  final PortfolioRepository repository;

  GetPortfolioData(this.repository);

  // You might have separate use cases or a combined one like this
  Future<Map<String, dynamic>> call() async {
    // Execute fetches in parallel
    final List<dynamic> results = await Future.wait(<Future<dynamic>>[
      repository.getProfileBio(),
      repository.getProjects(),
      repository.getExperiences(),
      repository.getSkills(),
    ]);

    return <String, dynamic>{
      'bio': results[0] as String,
      'projects': results[1] as List<Project>,
      'experience': results[2] as List<Experience>,
      'skills': results[3] as List<Skill>,
    };
  }
}
