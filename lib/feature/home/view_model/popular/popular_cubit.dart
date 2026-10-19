import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/feature/home/data/home_api.dart';
import 'package:movie_app/feature/home/view_model/popular/popular_state.dart';

class PopularCubit extends Cubit<PopularState> {
  final HomeApi api;

  PopularCubit(this.api) : super(PopularInitial());

  Future<void> loadTopRated() async {
    emit(PopularLoading());
    try {
      final movies = await api.getPopularMovies();
      emit(PopularSuccess(movies));
    } catch (e) {
      emit(PopularError("Failed to load top rated movies"));
}
}
}