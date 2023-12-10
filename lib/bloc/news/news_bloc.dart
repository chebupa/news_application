import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_application/models/news.dart';
import 'package:news_application/models/news_response.dart';
import 'package:news_application/models/pagination.dart';
import 'package:news_application/services/news_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.newsService) : super(NewsInitial()) {
    on<LoadNews>(_onLoadNews);
  }

  final NewsService newsService;

  Future<void> _onLoadNews(
    LoadNews event,
    Emitter<NewsState> emit,
  ) async {
    emit(NewsLoading());

    await Future.delayed(const Duration(seconds: 3));

    Pagination<NewsResponse> pagination = await newsService.getNews();
    final news = pagination.results
        ?.map((newsItem) => convertResponseToNewsModel(newsItem))
        .toList();

    if (news != null) {
      emit(
        NewsSuccess(news: news),
      );
    }
  }
}
