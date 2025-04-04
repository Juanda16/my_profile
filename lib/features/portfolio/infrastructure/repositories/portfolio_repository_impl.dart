import '../../domain/entities/entities.dart';
import '../../domain/repositories/portfolio_repository.dart';
import '../datasources_contract/portfolio_local_datasource.dart';

class PortfolioRepositoryImpl implements PortfolioRepository {
  final PortfolioLocalDataSource localDataSource;

  PortfolioRepositoryImpl({required this.localDataSource});

  @override
  Future<String> getProfileBio() async =>
      await localDataSource.getProfileBioData();

  @override
  Future<List<Experience>> getExperiences() async {
    final List<Map<String, dynamic>> data =
        await localDataSource.getExperienceData();
    // Simple mapping assuming keys match Experience fields
    return data
        .map((Map<String, dynamic> item) => Experience.fromJson(item))
        .toList(); // Add fromJson factory
  }

  @override
  Future<List<Project>> getProjects() async {
    final List<Map<String, dynamic>> data =
        await localDataSource.getProjectData();
    return data
        .map((Map<String, dynamic> item) => Project.fromJson(item))
        .toList(); // Add fromJson factory
  }

  @override
  Future<List<Skill>> getSkills() async {
    final List<Map<String, dynamic>> data =
        await localDataSource.getSkillData();
    return data
        .map((Map<String, dynamic> item) => Skill.fromJson(item))
        .toList(); // Add fromJson factory
  }
}
