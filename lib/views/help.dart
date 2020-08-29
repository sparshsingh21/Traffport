import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
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
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 80,
                    width: 60,
                    child: Hero(
                        tag: 'signal',
                        child: Image.asset('assets/images/traffic.png'))),
              ),
              SizedBox(
                width: 65,
              ),
              Container(
                  height: 50,
                  width: 50,
                  child: Hero(
                      tag: 'help',
                      child: Image.asset('assets/images/help.png'))),
              Text(
                'Help',
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
          SizedBox(
            height: 130,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(120)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Color(0xFF30EE8E),
              child: Center(
                child: Text(
                  'Terms of Service',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(120)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Color(0xFF30EE8E),
              child: Center(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(120)),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.8,
              color: Color(0xFF30EE8E),
              child: Center(
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
