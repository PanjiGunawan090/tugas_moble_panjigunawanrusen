import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<int> ColorCodes = <int>[500, 700, 900];
  var bulan = ["panji", "gunawan", "ruseng"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.blue,
            child: ListView.separated(
              padding: EdgeInsets.all(10),
              itemCount: ColorCodes.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  color: Colors.amber[ColorCodes[index]],
                  child: Text(
                    bulan[index],
                    style: TextStyle(
                      fontSize: 29,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext conrext, int index) {
                return Divider();
              },
            ),
          ),
        ),
      ),
    );
  }
}
