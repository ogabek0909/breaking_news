import 'package:go_router/go_router.dart';
import 'package:news_application/src/domain/models/article.dart';
import 'package:news_application/src/presentation/views/article_detail_screen.dart';
import '../../src/presentation/views/breaking_news_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const BreakingNewsScreen(),
      name: BreakingNewsScreen.routeName,
      routes: [
        GoRoute(
          path: 'detail',
          name: ArticleDetailScreen.routeName,
          builder: (context, state) =>  ArticleDetailScreen(article: state.extra as Article),
        ),
      ],
    ),
  ],
);
