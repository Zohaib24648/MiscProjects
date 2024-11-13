// data/news_repository_impl.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../domain/news_response.dart';
import '../domain/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final String apiKey = 'abb021fcd9124fe4a756d19365dc0136'; // Replace with your actual API key
  final String baseUrl = 'https://newsapi.org/v2/top-headlines?country=us';

  @override
  Future<NewsResponse> fetchTopHeadlines() async {
    final response = await http.get(Uri.parse('$baseUrl&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      return NewsResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load news');
    }
  }
}
