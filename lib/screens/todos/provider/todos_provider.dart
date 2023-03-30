import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing_all/screens/todos/model/todos_model.dart';

class todosProvider extends ChangeNotifier
{

  List<dynamic> l5 = [];
  Future<void> todos()
  async {
    String todosData = await rootBundle.loadString("assets/json/todos.json");

    var todosJson = jsonDecode(todosData);

    List<dynamic> todosModelList = todosJson.map((e) => todosModel().fromTodos(e)).toList();

    l5 = todosModelList;
    notifyListeners();
  }
}