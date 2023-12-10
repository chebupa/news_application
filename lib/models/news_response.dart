import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:news_application/models/news.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory NewsResponse({
    int? id,
    required String title,
    required String url,
    String? imageUrl,
    String? newsSite,
    required String summary,
    DateTime? publishedAt,
    DateTime? updatedAt,
    bool? featured,
    List<dynamic>? launches,
    List<dynamic>? events,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

News convertResponseToNewsModel(NewsResponse response) {
  return News(
    title: response.title,
    description: response.summary,
    imageUrl: response.imageUrl,
    sourceUrl: response.url,
  );
}
