import 'package:get_it/get_it.dart';

import '../features/portfolio/datasource/portfolio_local_datasource.dart';
import '../features/portfolio/domain/repositories/portfolio_repository.dart';
import '../features/portfolio/domain/use_cases/get_portfolio_data.dart';
import '../features/portfolio/infrastructure/datasources_contract/portfolio_local_datasource.dart';
import '../features/portfolio/infrastructure/repositories/portfolio_repository_impl.dart';
import '../features/portfolio/presentation/cubit/portfolio_cubit.dart';

final sl = GetIt.instance; // Service Locator

void init() {
  // Features - Portfolio
  // Cubit
  sl.registerFactory(() => PortfolioCubit(getPortfolioData: sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetPortfolioData(sl()));

  // Repository
  sl.registerLazySingleton<PortfolioRepository>(
      () => PortfolioRepositoryImpl(localDataSource: sl()));

  // Data Sources
  sl.registerLazySingleton<PortfolioLocalDataSource>(
      () => PortfolioLocalDataSourceImpl());

  // Core (if any common utilities need registration)

  // External (like http client if you fetch data later)
}
