# togle2019
flutter
///main.dart//

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue,BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorFiltered(
        colorFilter: colorFilter,
              child: Scaffold(
          appBar: AppBar(
            title: Text("Widget demo 2019"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SelectableText(
                  " Selectable",
                  style: TextStyle(fontSize: 20),
                  showCursor: true,
                  cursorWidth: 3,
                  cursorColor: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                ToggleButtons(
                  isSelected: isSelected,
                  children: <Widget>[
                    Icon(Icons.access_alarm),
                    Icon(Icons.adb),
                    Icon(Icons.add_a_photo)
                  ],
                  onPressed: (index){
                    setState(() {
                      if(index ==0)
                      colorFilter =ColorFilter.mode(Colors.blue,BlendMode.screen);
                      else if(index==1)
                      colorFilter =ColorFilter.mode(Colors.green,BlendMode.softLight);
                      else
                      colorFilter = ColorFilter.mode(Colors.purple,BlendMode.multiply);

                      for ( int i = 0; i < isSelected.length; i++)
                      isSelected[i] = (i == index) ? true: false;
                    });
                    
                  },
                  fillColor: Colors.red[50],
                  selectedColor: Colors.red,
                  selectedBorderColor: Colors.red,
                  splashColor: Colors.blue,
                  highlightColor: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
