import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_all/screens/albums/model/album_model.dart';

class albumProvider extends ChangeNotifier
{

  List<dynamic> l1 = [];
  Future<void> album()
  async {
    String albumData = await rootBundle.loadString("assets/json/album.json");

    var albumJson = jsonDecode(albumData);

    List<dynamic> albumDataList = albumJson.map((e) => albumModel().fromAlbum(e)).toList();

    l1 = albumDataList;
    notifyListeners();
  }
}