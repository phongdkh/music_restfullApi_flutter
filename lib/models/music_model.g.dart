// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicModel _$MusicModelFromJson(Map<String, dynamic> json) => MusicModel()
  ..id = json['Id'] as String?
  ..title = json['Title'] as String?
  ..album = json['Album'] as String?
  ..artist = json['Artist'] as String?
  ..genre = json['Genre'] as String?
  ..source = json['Source'] as String?
  ..image = json['Image'] as String?
  ..trackNumber = json['TrackNumber'] as int?
  ..totalTrackCount = json['TotalTrackCount'] as int?
  ..duration = json['Duration'] as int?
  ..site = json['Site'] as String?;

Map<String, dynamic> _$MusicModelToJson(MusicModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Title': instance.title,
      'Album': instance.album,
      'Artist': instance.artist,
      'Genre': instance.genre,
      'Source': instance.source,
      'Image': instance.image,
      'TrackNumber': instance.trackNumber,
      'TotalTrackCount': instance.totalTrackCount,
      'Duration': instance.duration,
      'Site': instance.site,
    };