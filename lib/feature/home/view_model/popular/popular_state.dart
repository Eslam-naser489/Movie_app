import 'package:movie_app/feature/models/movie_model.dart';

abstract class PopularState{} 

class PopularInitial extends PopularState {}

class PopularLoading extends PopularState {}

class PopularSuccess extends PopularState {
  final List<Movie> movies;

  PopularSuccess(this.movies);
}

class PopularError extends PopularState {
  final String message;
  PopularError(this.message);
}