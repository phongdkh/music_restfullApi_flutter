import 'package:json_annotation/json_annotation.dart';
import 'package:music_restfulapi_flutter/models/music_model.dart';
import 'package:music_restfulapi_flutter/remote/service/response/base_response.dart';


part 'music_response.g.dart';

@JsonSerializable()
class MusicResponse extends BaseResponse {
  @JsonKey(name: 'music')
  List<MusicModel>? music;

  MusicResponse();

  factory MusicResponse.fromJson(Map<String, dynamic> json) =>
      _$MusicResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MusicResponseToJson(this);
}
