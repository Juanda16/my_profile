import 'package:mi_profile/features/portfolio/domain/entities/entities.dart';

abstract class PortfolioRepository {
  /// Fetches the portfolio data from a remote source
  Future<List<Project>> getProjects();

  /// Fetches the experience data from a remote source
  Future<List<Experience>> getExperiences();

  /// Fetches the portfolio data from a remote source
  Future<List<Skill>> getSkills();

  /// Fetches the portfolio bio data from a remote source
  Future<String> getProfileBio();
}
