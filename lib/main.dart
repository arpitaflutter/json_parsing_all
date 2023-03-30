import 'package:flutter/material.dart';
import 'package:json_parsing_all/screens/albums/provider/albums_provider.dart';
import 'package:json_parsing_all/screens/albums/view/album_screen.dart';
import 'package:json_parsing_all/screens/comments/provider/comment_provider.dart';
import 'package:json_parsing_all/screens/comments/view/comment_screen.dart';
import 'package:json_parsing_all/screens/photos/provider/photos_provider.dart';
import 'package:json_parsing_all/screens/photos/view/photos_screen.dart';
import 'package:json_parsing_all/screens/post/provider/postProvider.dart';
import 'package:json_parsing_all/screens/post/view/PostScreen.dart';
import 'package:json_parsing_all/screens/post/view/post_screen.dart';
import 'package:json_parsing_all/screens/todos/provider/todos_provider.dart';
import 'package:json_parsing_all/screens/todos/view/todos_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostProvider(),),
        ChangeNotifierProvider(create: (context) => albumProvider(),),
        ChangeNotifierProvider(create: (context) => comment_provider(),),
        ChangeNotifierProvider(create: (context) => photos_provider(),),
        ChangeNotifierProvider(create: (context) => todosProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => post_screen(),
          'post':(context) => PostScreen(),
          'album':(context) => album_screen(),
          'comment':(context) => comment_screen(),
          'photos':(context) => photos_screen(),
          'todos':(context) => todos_screen(),
        },
      ),
    ),
  );
}