import 'package:json_annotation/json_annotation.dart';

part 'music_model.g.dart';

@JsonSerializable()
class MusicModel {
  @JsonKey(name: 'Id')
  String? id;

  @JsonKey(name: 'Title')
  String? title;

  @JsonKey(name: 'Album')
  String? album;

  @JsonKey(name: 'Artist')
  String? artist;

  @JsonKey(name: 'Genre')
  String? genre;

  @JsonKey(name: 'Source')
  String? source;

  @JsonKey(name: 'Image')
  String? image;

  @JsonKey(name: 'TrackNumber')
  int? trackNumber;

  @JsonKey(name: 'TotalTrackCount')
  int? totalTrackCount;

  @JsonKey(name: 'Duration')
  int? duration;

  @JsonKey(name: 'Site')
  String? site;

  MusicModel();

  factory MusicModel.fromJson(Map<String, dynamic> json) =>
      _$MusicModelFromJson(json);

  Map<String, dynamic> toJson() => _$MusicModelToJson(this);
}
