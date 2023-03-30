import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_all/screens/comments/model/comment_model.dart';

class comment_provider extends ChangeNotifier
{

  List<dynamic> l2 = [];
  Future<void> fromComment()
  async {
    String commentData = await rootBundle.loadString("assets/json/comment.json");

    var CommentJsonData = jsonDecode(commentData);

    List<dynamic> commentList = CommentJsonData.map((e) => commentModel().fromAlbum(e)).toList();
    l2 = commentList;
    notifyListeners();
  }
}