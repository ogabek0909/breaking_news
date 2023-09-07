import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_application/src/data/datasources/remote/news_api_service.dart';
import 'package:news_application/src/domain/models/article.dart';
import 'package:news_application/src/domain/models/requests/breaking_news_request.dart';

part 'remote_articles_event.dart';
part 'remote_articles_state.dart';

class RemoteArticlesBloc extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  RemoteArticlesBloc() : super(RemoteArticlesInitial()) {
    on<GetArticlesEvent>(_onGetArticles);
  }

  Future _onGetArticles(GetArticlesEvent event, Emitter<RemoteArticlesState> emit)async{

    final newsApiService = NewsApiService();
    final  response =await newsApiService.getBreakingNewsArticles(request: BreakingNewsRequest());
    final List<Article> articles = response.articles;
    

    emit(RemoteArticlesState(articles: [...articles]));
  }

}

