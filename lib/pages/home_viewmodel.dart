import 'package:dio/dio.dart';
import 'package:music_restfulapi_flutter/base/base_viewmodel.dart';
import 'package:music_restfulapi_flutter/models/music_model.dart';
import 'package:music_restfulapi_flutter/remote/service/response/music_response.dart';


class HomeVM extends BaseViewModel {
  int counter = 0;
  MusicResponse? data;
  List<MusicModel> listData = [];

  @override
  void onInit() {
    fetchNewsAll();
  }

  Future fetchNewsAll() async {
    showLoading();
    try {
      final response = await api.apiServices.getMusic();
      //data = response;
      listData.addAll(response?.music ?? []);
      print(listData.length);
      notifyListeners();
      hideLoading();
    } on DioError catch (e) {
      print(e);
      hideLoading();
    }
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
