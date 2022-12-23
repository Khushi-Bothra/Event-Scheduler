import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _NewEventScreen();

}

class _NewEventScreen extends State<NewEventScreen>{
  final TextEditingController _textEditingController= TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
        appBar:AppBar(
          backgroundColor: Colors.deepPurple[800],
            title: Text("New Event"),
        ),
      body:Padding(padding: EdgeInsets.all(70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          TextField(
            cursorColor: Colors.white,
            controller: _textEditingController,
            decoration:InputDecoration(
              hintText: "Event",
              hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              prefixIcon: Icon(Icons.calendar_today_outlined,color: Colors.white,),
              fillColor: Colors.deepPurple[800],
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
          Builder(
              builder:(context) {
                return ElevatedButton(
                  onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                  },
                  child: Text("ADD"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[200],
                    minimumSize: Size(327,40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                    //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                    ),
                  ),//end of styleFrom
                );
              }
          ),
        ],
      ),
      ),
    );
  }
}
















