import 'package:json_annotation/json_annotation.dart';

part 'music_entity.g.dart';

@JsonSerializable()
class MusicEntity {
  @JsonKey(name: "Id")
  final String id;

  @JsonKey(name: "Title")
  final String title;

  @JsonKey(name: "Album")
  final String album;

  @JsonKey(name: "Artist")
  final String artist;

  @JsonKey(name: "Genre")
  final String genre;

  @JsonKey(name: "Source")
  final String source;

  @JsonKey(name: "Image")
  final String image;

  @JsonKey(name: "TrackNumber")
  final int trackNumber;

  @JsonKey(name: "TotalTrackCount")
  final int totalTrackCount;

  @JsonKey(name: "Duration")
  final int duration;

  @JsonKey(name: "Site")
  final String site;

  MusicEntity(
      {required this.id,
      required this.title,
      required this.album,
      required this.artist,
      required this.genre,
      required this.source,
      required this.image,
      required this.trackNumber,
      required this.totalTrackCount,
      required this.duration,
      required this.site});

  factory MusicEntity.fromJson(Map<String, dynamic> json) =>
      _$MusicEntityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MusicEntityToJson(this);
}
