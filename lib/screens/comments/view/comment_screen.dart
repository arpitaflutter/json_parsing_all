import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_parsing_all/screens/comments/provider/comment_provider.dart';
import 'package:provider/provider.dart';

class comment_screen extends StatefulWidget {
  const comment_screen({Key? key}) : super(key: key);

  @override
  State<comment_screen> createState() => _comment_screenState();
}

class _comment_screenState extends State<comment_screen> {

  comment_provider? ct,cf;
  @override
  Widget build(BuildContext context) {

    ct = Provider.of<comment_provider>(context,listen: true);
    cf = Provider.of<comment_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Comment Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${ct!.l2[index].postId}"),
                subtitle: Text("${ct!.l2[index].name}"),
              );
            },
              itemCount: cf!.l2.length,
            ))
          ],
        ),
      ),
    );
  }
}
