// domain/news_repository.dart
import '/domain/news_response.dart';
abstract class NewsRepository {
  Future<NewsResponse> fetchTopHeadlines();
}
