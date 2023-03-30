import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_all/screens/post/model/PostModel.dart';

class PostProvider extends ChangeNotifier
{

  List<dynamic>  PostList = [];
  Future<void> postJson()
  async {
    String postjson = await rootBundle.loadString("assets/json/post.json");

    var postJsonData = jsonDecode(postjson);

    List<dynamic> modelList = postJsonData.map((e) => PostModel().fromJson(e)).toList();
    PostList = modelList;
    notifyListeners();
  }
}