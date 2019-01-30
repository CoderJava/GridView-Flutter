import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double appBarHeight = kToolbarHeight;
    final double paddingTop = mediaQueryData.padding.top;
    final double paddingBottom = mediaQueryData.padding.bottom;
    final double heightScreen = mediaQueryData.size.height - paddingBottom - paddingTop - appBarHeight;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "GridView",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen/heightScreen,
          children: <Widget>[
            Container(
              color: Colors.yellowAccent,
              child: Center(
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.brown,
              child: Center(
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 24.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
