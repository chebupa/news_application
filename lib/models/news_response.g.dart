// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsResponseImpl _$$NewsResponseImplFromJson(Map<String, dynamic> json) =>
    _$NewsResponseImpl(
      id: json['id'] as int?,
      title: json['title'] as String,
      url: json['url'] as String,
      imageUrl: json['image_url'] as String?,
      newsSite: json['news_site'] as String?,
      summary: json['summary'] as String,
      publishedAt: json['published_at'] == null
          ? null
          : DateTime.parse(json['published_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      featured: json['featured'] as bool?,
      launches: json['launches'] as List<dynamic>?,
      events: json['events'] as List<dynamic>?,
    );

Map<String, dynamic> _$$NewsResponseImplToJson(_$NewsResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'image_url': instance.imageUrl,
      'news_site': instance.newsSite,
      'summary': instance.summary,
      'published_at': instance.publishedAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'featured': instance.featured,
      'launches': instance.launches,
      'events': instance.events,
    };
