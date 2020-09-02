import 'package:flutter/material.dart';

class Confirm extends StatelessWidget {
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
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text("Description:"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Date and Time:"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: RaisedButton(
              color: Color(0xFF30EE8E),
              onPressed: () {},
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
