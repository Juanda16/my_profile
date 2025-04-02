part of 'portfolio_cubit.dart';

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState.initial() = PortfolioInitial;
  const factory PortfolioState.loading() = PortfolioLoading;
  const factory PortfolioState.loaded({
    required List<Experience> experiences,
    required List<Project> projects,
    required List<Skill> skills,
    required String bio,
  }) = PortfolioLoaded;

  const factory PortfolioState.error({
    required String message,
    required bool error,
  }) = PortfolioError;
}
