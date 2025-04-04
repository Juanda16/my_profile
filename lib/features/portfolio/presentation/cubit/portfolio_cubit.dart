import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';
import '../../domain/use_cases/get_portfolio_data.dart';

part 'portfolio_cubit.freezed.dart';
part 'portfolio_state.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  final GetPortfolioData getPortfolioData;

  PortfolioCubit({required this.getPortfolioData})
      : super(
          const PortfolioState.initial(),
        );

  Future<void> loadData() async {
    try {
      emit(const PortfolioState.loading());
      final Map<String, dynamic> data = await getPortfolioData();
      emit(PortfolioState.loaded(
        experiences: data['experience'] as List<Experience>,
        projects: data['projects'] as List<Project>,
        skills: data['skills'] as List<Skill>,
        bio: data['bio'] as String,
      ));
    } catch (e) {
      emit(PortfolioState.error(
          error: true,
          message: 'Failed to load portfolio data: ${e.toString()}'));
    }
  }
}
