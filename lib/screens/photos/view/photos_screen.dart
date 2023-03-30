import 'package:flutter/material.dart';
import 'package:json_parsing_all/screens/photos/provider/photos_provider.dart';
import 'package:provider/provider.dart';

class photos_screen extends StatefulWidget {
  const photos_screen({Key? key}) : super(key: key);

  @override
  State<photos_screen> createState() => _photos_screenState();
}

class _photos_screenState extends State<photos_screen> {

  photos_provider? pt,pf;
  @override
  Widget build(BuildContext context) {

    pt = Provider.of<photos_provider>(context,listen: true);
    pf = Provider.of<photos_provider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Photos Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${pt!.l4[index].title}"),
                subtitle: Text("${pt!.l4[index].thumbnailUrl}"),
              );
            },
              itemCount: pf!.l4.length,
            ))
          ],
        ),
      ),
    );
  }
}
