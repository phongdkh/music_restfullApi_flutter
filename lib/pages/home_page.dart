import 'package:flutter/material.dart';
import 'package:music_restfulapi_flutter/base/base_page.dart';
import 'package:music_restfulapi_flutter/models/music_model.dart';
import 'package:music_restfulapi_flutter/pages/home_viewmodel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with MixinBasePage<HomeVM> {
  List<MusicModel> listDataMusic = [];

  @override
  Widget build(BuildContext context) {
    return builder(() => Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: ListView.builder(
              itemCount: listDataMusic.length,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(listDataMusic[index].title ?? "error"),
                );
              }),
        ));
  }

  @override
  HomeVM create() {
    return HomeVM();
  }

  @override
  void initialise(BuildContext context) {}
}
