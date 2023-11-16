import 'package:dio/dio.dart';
import 'package:music_restfulapi_flutter/models/catalog_model.dart';
import 'package:music_restfulapi_flutter/models/post_model.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

// @RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
// abstract class ApiService{
//   factory ApiService(Dio dio) = _ApiService;
//
//   @GET("posts")
//   Future<List<PostModel>> getPosts();
// }

@RestApi(baseUrl: "https://storage.googleapis.com/uamp/")
abstract class ApiService{
  factory ApiService(Dio dio) = _ApiService;

  @GET("catalog.json")
  Future<List<CatalogModel>> getCatalog();
}