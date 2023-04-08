import 'dart:io';

import 'package:flutter/material.dart';

class ImageDisplay extends StatefulWidget {
  ImageDisplay({super.key, required this.files});
  List<File> files;

  @override
  State<ImageDisplay> createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Display "),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 2,
                  color: Colors.black,
                );
              },
              itemCount: widget.files.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                    width: 300,
                    height: 300,
                    child: Image.file(widget.files[index]));
              }),
        )
      ]),
    );
  }
}
