import 'package:dio/dio.dart';
import 'package:news_application/src/domain/models/requests/breaking_news_request.dart';
import 'package:news_application/src/domain/models/responses/breaking_news.response.dart';
import 'package:news_application/src/domain/repositories/api_repository.dart';
import 'package:news_application/src/utils/constants/strings.dart';

class NewsApiService extends ApiRepository{
  @override
  Future<BreakingNewsResponse> getBreakingNewsArticles({required BreakingNewsRequest request}) async{
    var options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout:const Duration(seconds: 5),
      receiveTimeout:const Duration(seconds: 5),
    );

    var dio = Dio(options);

    final response =await dio.get('/everything/',queryParameters: {
      "apiKey":request.apiKey,
      "sources":request.sources,
      "page":request.page,
      // "pageSize":request.pageSize,
    });
    print(response.data);
    return BreakingNewsResponse.fromMap(response.data);
  }
}