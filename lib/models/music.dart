import 'package:json_annotation/json_annotation.dart';

part 'music.g.dart';

@JsonSerializable()
class Music {
  String title;
  String urlImg;
  String urlVideo;

  Music(this.title, this.urlImg, this.urlVideo);

  factory Music.fromJson(Map<String,dynamic> json)=>_$MusicFromJson(json);
  Map<String, dynamic> toJson() => _$MusicToJson(this);

}
