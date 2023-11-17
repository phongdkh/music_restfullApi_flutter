// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicResponse _$MusicResponseFromJson(Map<String, dynamic> json) =>
    MusicResponse(
      musicEntity: MusicEntity.fromJson(json['Music'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MusicResponseToJson(MusicResponse instance) =>
    <String, dynamic>{
      'Music': instance.musicEntity,
    };
