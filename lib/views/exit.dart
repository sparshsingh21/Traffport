import 'package:flutter/material.dart';

class Exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF1C8E6B),
          ),
        ],
      ),
    );
  }
}
