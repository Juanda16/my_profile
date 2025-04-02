import '../../domain/entities/entities.dart';
import '../../domain/repositories/portfolio_repository.dart';
import '../datasources_contract/portfolio_local_datasource.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioLocalDataSource localDataSource;

  PortfolioRepositoryImpl({required this.localDataSource});

  @override
  Future<String> getProfileBio() async {
    return await localDataSource.getProfileBioData();
  }

  @override
  Future<List<Experience>> getExperiences() async {
    final data = await localDataSource.getExperienceData();
    // Simple mapping assuming keys match Experience fields
    return data
        .map((item) => Experience.fromJson(item))
        .toList(); // Add fromJson factory
  }

  @override
  Future<List<Project>> getProjects() async {
    final data = await localDataSource.getProjectData();
    return data
        .map((item) => Project.fromJson(item))
        .toList(); // Add fromJson factory
  }

  @override
  Future<List<Skill>> getSkills() async {
    final data = await localDataSource.getSkillData();
    return data
        .map((item) => Skill.fromJson(item))
        .toList(); // Add fromJson factory
  }
}
