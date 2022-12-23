import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => _MyApp();
}
class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
    //Text("Event 1")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[300],
        appBar: AppBar(
            backgroundColor: Colors.deepPurple[800],
            title: Text("Event Scheduler"),
        ),
        body: ListView.builder(
      itemCount: _list.length,
        itemBuilder: ((context, index) => Card(
          color: Colors.white,
          elevation: 7,
          child:ListTile(
            title: _list[index],
            tileColor: Colors.white,
          ) ,
        )
        )//end of itemBuilder
        ),
          floatingActionButton: Builder(
            builder:(context) {
              return FloatingActionButton(
                backgroundColor:Colors.deepPurple[800] ,
                onPressed: () async {
                String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newText));
                });
              },
                child: Icon(Icons.add),
              );
            }
            ),
        ),
      );
  }
}
