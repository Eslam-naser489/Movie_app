import 'package:flutter/material.dart';
import 'package:movie_app/feature/details/view/details_screen.dart';
import 'package:movie_app/feature/home/view/home_screen.dart';
import 'package:movie_app/main_screen.dart';

void main(){
  runApp(MovieApp());
}
class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MainScreen(),
    );
  }
}