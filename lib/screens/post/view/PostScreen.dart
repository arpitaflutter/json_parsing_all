import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/postProvider.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  PostProvider? pt,pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<PostProvider>(context,listen: true);
    pf = Provider.of<PostProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${pt!.PostList[index].id}"),
                subtitle: Text("${pt!.PostList[index].title}"),
              );
            },
              itemCount: pf!.PostList.length,
            ))
          ],
        ),
      ),
    );
  }
}
