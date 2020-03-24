// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Music _$MusicFromJson(Map<String, dynamic> json) {
  return Music(
    json['title'] as String,
    json['urlImg'] as String,
    json['urlVideo'] as String,
  );
}

Map<String, dynamic> _$MusicToJson(Music instance) => <String, dynamic>{
      'title': instance.title,
      'urlImg': instance.urlImg,
      'urlVideo': instance.urlVideo,
    };
