import 'package:flutter/material.dart';

class GeneralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C8E6B),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFF1C8E6B),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.12,
              left: MediaQuery.of(context).size.width * 0.27,
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child:
                      Image(image: AssetImage('assets/images/traffic.png')))),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.45,
            left: MediaQuery.of(context).size.width * 0.22,
            child: Container(
                child: Text(
              'TRAFFPORT',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.52,
            left: MediaQuery.of(context).size.width * 0.38,
            child: Container(
                child: Text(
              '-Protect Traffic Rules, Be a Hero',
              style: TextStyle(fontSize: 16),
            )),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.0001,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color(0xFFF3EEEE)),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 65,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xFF30EE8E),
                        ),
                        child: Center(
                          child: Text(
                            'Report an Incident',
                            style: TextStyle(fontSize: 25),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.29,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Color(0xFFCFC3C3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Row(
                            children: [
                              Image.asset('assets/images/help.png'),
                              Text(
                                'HELP',
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
