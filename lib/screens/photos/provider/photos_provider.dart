import 'dart:convert';

import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_all/screens/photos/model/photos_model.dart';

class photos_provider extends ChangeNotifier
{

  List<dynamic> l4 = [];
  Future<void> photos()
  async {
    String photoData = await rootBundle.loadString("assets/json/photos.json");

    var PhotosJsonList = jsonDecode(photoData);

    List<dynamic> photoModelList = PhotosJsonList.map((e) => photosModel().fromPhotos(e)).toList();
    l4 = photoModelList;
    notifyListeners();
  }
}