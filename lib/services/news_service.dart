import 'package:dio/dio.dart';
import 'package:news_application/models/news_response.dart';
import 'package:news_application/models/pagination.dart';
import 'package:retrofit/retrofit.dart';

part 'news_service.g.dart';

@RestApi(baseUrl: 'https://api.spaceflightnewsapi.net')
abstract class NewsService {
  factory NewsService(Dio dio) = _NewsService;

  @GET('/v4/articles')
  Future<Pagination<NewsResponse>> getNews();
}
