import 'package:news_application/src/domain/models/requests/breaking_news_request.dart';
import 'package:news_application/src/domain/models/responses/breaking_news.response.dart';

abstract class ApiRepository {
  Future<BreakingNewsResponse> getBreakingNewsArticles({
    required BreakingNewsRequest request
  });
}