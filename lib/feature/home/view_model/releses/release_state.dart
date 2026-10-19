import 'package:movie_app/feature/models/movie_model.dart';

abstract class ReleasesState{} 

class ReleasesInitial extends ReleasesState {}

class ReleasesLoading extends ReleasesState {}

class ReleasesSuccess extends ReleasesState {
  final List<Movie> movies;

  ReleasesSuccess(this.movies);
}

class ReleasesError extends ReleasesState {
  final String message;
  ReleasesError(this.message);
}