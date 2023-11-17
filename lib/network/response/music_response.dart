
import 'package:json_annotation/json_annotation.dart';
import 'package:music_restfulapi_flutter/network/entity/music_entity.dart';

part 'music_response.g.dart';

@JsonSerializable()
class MusicResponse{

  @JsonKey(name:"Music")
  final MusicEntity musicEntity;

  MusicResponse({required this.musicEntity});

  factory MusicResponse.fromJson(Map<String, dynamic> json) =>
      _$MusicResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MusicResponseToJson(this);
}