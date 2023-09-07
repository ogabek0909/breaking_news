import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_application/src/presentation/providers/bloc/remote_articles_bloc.dart';
import 'package:news_application/src/presentation/views/article_detail_screen.dart';

class BreakingNewsScreen extends StatelessWidget {
  const BreakingNewsScreen({super.key});
  static const routeName = "BreakingNewsScreen";

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<RemoteArticlesBloc>(context).add(GetArticlesEvent());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Breaking News",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: BlocBuilder<RemoteArticlesBloc, RemoteArticlesState>(
        builder: (context, state) => ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: state.articles.length,
          itemBuilder: (context, index) => ListTile(
            leading: Image.network(
              state.articles[index].urlToImage!,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const SizedBox(width: 100, child: Placeholder()),
            ),
            title: Text(state.articles[index].title!),
            onTap: () {
              context.goNamed(ArticleDetailScreen.routeName,
                  extra: state.articles[index]);
            },
          ),
        ),
      ),
    );
  }
}
