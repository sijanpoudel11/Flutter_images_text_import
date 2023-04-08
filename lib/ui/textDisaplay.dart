import 'package:flutter/material.dart';

class TextDisplay extends StatelessWidget {
  TextDisplay({super.key, required this.sharedText});
  String sharedText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text display"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text(
            sharedText,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
