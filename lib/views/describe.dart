import 'package:flutter/material.dart';

class Describe extends StatefulWidget {
  @override
  _DescribeState createState() => _DescribeState();
}

class _DescribeState extends State<Describe> {
  TextEditingController _describeEvent = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C8E6B),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 80,
                  width: 60,
                  child: Image.asset('assets/images/traffic.png')),
              SizedBox(
                width: 40,
              ),
              Container(
                  child: Text('TraffPort', style: TextStyle(fontSize: 40))),
              SizedBox(
                width: 40,
              ),
              Image.asset('assets/images/help.png')
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Image.asset('assets/images/describe.png'))
        ],
      ),
    );
  }

  Widget describe() {
    return TextField(
      controller: _describeEvent,
      maxLines: 5,
      enabled: true,
      decoration: InputDecoration(
        hintText: "Describe the event here...",
        contentPadding: EdgeInsets.all(0),
        hintStyle: TextStyle(color: Colors.blueAccent),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[800], width: 1)),
      ),
    );
  }
}
