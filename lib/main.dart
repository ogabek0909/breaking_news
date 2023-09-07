import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/app.dart';
import 'package:news_application/src/presentation/providers/bloc/remote_articles_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => RemoteArticlesBloc(),
      child: const App(),
    ),
  );
}
