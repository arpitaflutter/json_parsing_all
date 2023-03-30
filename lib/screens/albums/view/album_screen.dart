import 'package:flutter/material.dart';
import 'package:json_parsing_all/screens/albums/provider/albums_provider.dart';
import 'package:provider/provider.dart';

class album_screen extends StatefulWidget {
  const album_screen({Key? key}) : super(key: key);

  @override
  State<album_screen> createState() => _album_screenState();
}

class _album_screenState extends State<album_screen> {

  albumProvider? at,af;
  @override
  Widget build(BuildContext context) {

    at = Provider.of<albumProvider>(context,listen: true);
    af = Provider.of<albumProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Album Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${at!.l1[index].id}"),
                subtitle: Text("${at!.l1[index].title}"),
              );
            },
              itemCount: af!.l1.length,
            ))
          ],
        ),
      ),
    );
  }
}
