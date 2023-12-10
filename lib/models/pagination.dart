import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed(genericArgumentFactories: true)
class Pagination<T> with _$Pagination {
  const factory Pagination({
    int? count,
    String? next,
    dynamic previous,
    List<T>? results,
  }) = _Pagination;

  factory Pagination.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationFromJson(json, fromJsonT);
}
