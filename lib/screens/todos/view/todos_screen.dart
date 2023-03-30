import 'package:flutter/Material.dart';
import 'package:provider/provider.dart';

import '../model/todos_model.dart';
import '../provider/todos_provider.dart';

class todos_screen extends StatefulWidget {
  const todos_screen({Key? key}) : super(key: key);

  @override
  State<todos_screen> createState() => _todos_screenState();
}

class _todos_screenState extends State<todos_screen> {

  todosProvider? tt,tf;
  @override
  Widget build(BuildContext context) {

    tt = Provider.of<todosProvider>(context,listen: true);
    tf = Provider.of<todosProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Todos Data"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(child: ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text("${tt!.l5[index].userId}"),
                subtitle: Text("${tt!.l5[index].title}"),
              );
            },
              itemCount: tf!.l5.length,
            ))
          ],
        ),
      ),
    );
  }
}
