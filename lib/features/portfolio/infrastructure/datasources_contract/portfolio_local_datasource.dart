abstract class PortfolioLocalDataSource {
  /// Fetches the portfolio data from a local source
  Future<List<Map<String, dynamic>>> getProjectData();

  /// Fetches the experience data from a local source
  Future<List<Map<String, dynamic>>> getExperienceData();

  /// Fetches the skills data from a local source
  Future<List<Map<String, dynamic>>> getSkillData();

  /// Fetches the portfolio bio data from a local source
  Future<String> getProfileBioData();
}
