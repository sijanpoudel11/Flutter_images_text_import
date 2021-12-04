import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final String topLine;
  final String bottomLine;

  const EmptyView({required this.topLine, required this.bottomLine});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 34.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _getText(text: topLine),
            _getText(text: bottomLine),
          ],
        ),
      ),
    );
  }

  Widget _getText({String? text}) {
    return Text(
      text!,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 14,
        height: 1.4,
      ),
    );
  }
}