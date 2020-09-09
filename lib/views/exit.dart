import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF1C8E6B),
      body: Stack(
        children: <Widget>[
        Container(
        height: _height,
        width: _width,
      ),
      Positioned(top: _height * 0.05,
        child: Row(
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
      ),
          Positioned(top: _height * 0.25,
          left: _width * 0.04,
          child: Text('THANK Y    U', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(
              top: _height * 0.26,
            right: _width *0.175,
            child: Container(
              height: _height*0.068,
              width: _width*0.13,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(60),color: Colors.black),
              child: Center(child: Image.asset('assets/images/helmet.png',height: 40,),)
            ),
          ),
          Positioned(top: _height * 0.29,
              left: _width * 0.04,
              child: Text('_____________', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.39,
              left: _width * 0.11,
              child: Text('For being a Responsible Citizen', style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.37,
              left: _width * 0.04,
              child: Text('_____________', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.54,
              left: _width * 0.12,
              child: Text('JAI', style: TextStyle(color: Colors.orange, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.54,
              left: _width * 0.39,
              child: Text('H', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.54,
              left: _width * 0.51,
              child: Text('I', style: TextStyle(color: Colors.blue[900], fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.54,
              left: _width * 0.56,
              child: Text('ND', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.54,
              left: _width * 0.77,
              child: Text('!!!', style: TextStyle(color: Color(0xFF30EE8E), fontSize: 60, fontWeight: FontWeight.bold))),
          Positioned(top: _height * 0.62,
              left: _width * 0.22,
              child: Container(
                  height: _height*0.2,
                  width: _width*0.5,
                  child: Image.asset('assets/images/indian-flag-38509.png'))),
          Positioned(
              bottom:_height * 0.06,
              left: _width * 0.27,
              child: InkWell(
                onTap: (){
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                },
                child:Container(
                    height: _height * 0.08,
                    width : _width * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF30EE8E),
                    ),
                    child: Center(child: Text('Close', style: TextStyle(fontSize: 25)))),
              ))
        ],
      ),
    );
  }
}
