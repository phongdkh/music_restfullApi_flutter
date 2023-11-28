
import 'package:dio/dio.dart';
import 'package:music_restfulapi_flutter/remote/service/response/music_response.dart';
import 'package:retrofit/retrofit.dart';


part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('catalog.json')//dường dẫn sever
  Future<MusicResponse> getMusic();

}