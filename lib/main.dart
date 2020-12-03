import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flat(),
    );
  }
}

class flat extends StatefulWidget {
  @override
  _flatState createState() => _flatState();
}

class _flatState extends State<flat> {
  bool _value2 = true;
  bool _value1 = true;
  bool _val1 = true;
  bool _val2 = true;
  int select = 1;
  int select1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Buttons"),
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            color: Colors.yellow,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: InkWell(
                onTap: () {
                  print('Clicked on URL by InkWell Widget');
                },
                child: Text("https://quickstartflutterdart.blogspot.in/",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 500,
            color: Colors.pink,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  print('Clicked on URL by GestureDetector Widget');
                },
                dragStartBehavior: DragStartBehavior.start,
                child: Text("https://quickstartflutterdart.blogspot.in/",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        decoration: TextDecoration.underline)
                ),
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: FlatButton(
                color: Colors.grey,
                onPressed: (){},
                child: Text("Ok",style: TextStyle(color: Colors.white),),
                splashColor: Colors.red,
                disabledColor: Colors.blue,
                disabledTextColor: Colors.pink,
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: Center(
              child: RaisedButton(
                elevation: 10.0,
                highlightElevation: 50.0,
                shape: Border.all(color: Colors.blue,width: 5.0),
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                color: Colors.grey,
                onPressed: (){},
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: <Color>[
                          Colors.red,
                          Colors.green,
                        ],
                      ),
                    ),
                    child: Text("Ok",style: TextStyle(color: Colors.white),)),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                splashColor: Colors.red,
                disabledColor: Colors.blue,
                disabledTextColor: Colors.pink,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: Column(
              children: [
                Checkbox(
                  value: _value1,
                  onChanged: (val){
                    setState(() {
                      _value1 = val;
                    });
                  },
                ),
                CheckboxListTile(
                  value: _value2,
                  title: Text("Accept the box"),
                  onChanged: (val){
                    setState(() {
                      _value2 = val;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: Column(
              children: [
                Switch(
                  value: _val1,
                  onChanged: (val){
                    setState(() {
                      _val1 = val;
                    });
                  },
                ),
                SwitchListTile(
                  value: _val2,
                  title: Text("Accept the box"),
                  onChanged: (val){
                    setState(() {
                      _val2 = val;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            color: Colors.lime,
            child: Column(
              children: [
                Radio(value:0, groupValue: select, onChanged: (val){
                  print("selected  $val");
                  setState(() {
                    select = val;
                  });
                }),
                RadioListTile(value:1,
                    title:Text("radiobutton"),
                    controlAffinity: ListTileControlAffinity.leading,
                    groupValue: select1, onChanged: (val){
                      print("selected  $val");
                      setState(() {
                        select1 = val;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("floating point"),
        onPressed: (){},
      ),
    );
  }
}

