import 'package:news_application/src/utils/constants/nums.dart';
import 'package:news_application/src/utils/constants/strings.dart';

class BreakingNewsRequest {
  final String apiKey;
  final String sources;
  final int page;
  final int pageSize;

  BreakingNewsRequest({
     this.sources = 'bbc-news, abc-news',
     this.apiKey = defaultApiKey,
     this.page = 1, 
     this.pageSize = defaultPageSize,
  });
}
