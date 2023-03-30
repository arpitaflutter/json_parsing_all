import 'package:flutter/material.dart';
import 'package:json_parsing_all/screens/albums/model/album_model.dart';
import 'package:json_parsing_all/screens/albums/provider/albums_provider.dart';
import 'package:json_parsing_all/screens/post/provider/postProvider.dart';
import 'package:json_parsing_all/screens/todos/provider/todos_provider.dart';
import 'package:provider/provider.dart';

import '../../comments/provider/comment_provider.dart';
import '../../photos/provider/photos_provider.dart';
import '../../todos/model/todos_model.dart';

class post_screen extends StatefulWidget {
  const post_screen({Key? key}) : super(key: key);

  @override
  State<post_screen> createState() => _post_screenState();
}

class _post_screenState extends State<post_screen> {

  PostProvider? pt,pf;
  albumProvider? at,af;
  comment_provider? ct,cf;
  photos_provider? t,f;
  todosProvider? tt,tf;
  @override
  Widget build(BuildContext context) {

    pt = Provider.of<PostProvider>(context,listen: true);
    pf = Provider.of<PostProvider>(context,listen: false);
    t = Provider.of<photos_provider>(context,listen: true);
    f = Provider.of<photos_provider>(context,listen: false);
    at = Provider.of<albumProvider>(context,listen: true);
    af = Provider.of<albumProvider>(context,listen: false);
    ct = Provider.of<comment_provider>(context,listen: true);
    cf = Provider.of<comment_provider>(context,listen: false);
    tt = Provider.of<todosProvider>(context,listen: true);
    tf = Provider.of<todosProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Json Prsing Data"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    ElevatedButton(onPressed: () {
                      pt!.postJson();
                      Navigator.pushNamed(context, 'post');
                    }, child: Text("Post Data")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      ct!.fromComment();
                      Navigator.pushNamed(context, 'comment');
                    }, child: Text("comments")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      af!.album();
                      Navigator.pushNamed(context, 'album');
                    }, child: Text("albums")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      f!.photos();
                      Navigator.pushNamed(context, 'photos');
                    }, child: Text("photos")),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      tf!.todos();
                      Navigator.pushNamed(context, 'todos');
                    }, child: Text("todos")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
