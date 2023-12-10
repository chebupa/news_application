// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/bloc/news/news_bloc.dart';
import 'package:news_application/screens/news/news_screen.dart';
import 'package:news_application/services/news_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(NewsService(Dio()))
        ..add(
          LoadNews(),
        ),
      child: MaterialApp(
        home: NewsScreen(),
      ),
    );
  }
}
