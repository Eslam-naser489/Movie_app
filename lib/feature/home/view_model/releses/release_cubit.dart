import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/feature/details/view_model/recommended/recommended_state.dart';
import 'package:movie_app/feature/home/data/home_api.dart';
import 'package:movie_app/feature/home/view_model/releses/release_state.dart';

class ReleasesCubit extends Cubit<ReleasesState> {
  final HomeApi api;

  ReleasesCubit(this.api) : super(ReleasesInitial());

  Future<void> loadReleases() async {
    emit(ReleasesLoading());
    try {
      final movies = await api.getReleases();
      emit(ReleasesSuccess(movies));
    } catch (e) {
      emit(ReleasesError("Failed to load top rated movies"));
}
}
}