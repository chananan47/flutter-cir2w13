import 'package:flutter/material.dart';
import 'package:flutter_navigator/screen/app_view.dart';

class AboutPage extends StatelessWidget {
  const AboutPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My About Pages"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("About page"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}