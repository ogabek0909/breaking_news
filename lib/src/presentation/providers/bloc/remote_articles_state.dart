part of 'remote_articles_bloc.dart';

 class RemoteArticlesState extends Equatable {
  final List<Article> articles;
  const RemoteArticlesState({required this.articles});
  
  @override
  List<Object> get props => [articles];
}

final class RemoteArticlesInitial extends RemoteArticlesState {
  RemoteArticlesInitial():super(articles: []);
}

