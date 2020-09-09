import 'package:flutter/material.dart';
import 'package:traffport/models/report_model.dart';
import 'package:traffport/services/crud.dart';
import 'exit.dart';
import 'dart:io';

class Confirm extends StatelessWidget {
  CrudMethods crudMethods = new CrudMethods();
  Report report = new Report();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF1C8E6B),
        body: Stack(children: <Widget>[
          Container(
            height: _height,
            width: _width,
          ),
          Positioned(
            top: _height * 0.05,
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
          Positioned(
              top: _height * 0.18,
              left: _width * 0.15,
              child: Container(
                height: _height * 0.35,
                width: _width * 0.7,
                child: Image.network(
                  Report.url,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              top: _height * 0.55,
              left: _width * 0.02,
              child: Text("Description:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Positioned(
              top: _height * 0.6,
              left: _width * 0.02,
              child: Container(
                  height: _height * 0.09,
                  width: _width * 0.95,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Text(Report.desc, style: TextStyle(fontSize: 20)),
                  ))),
          Positioned(
              top: _height * 0.72,
              left: _width * 0.02,
              child: Text("Date & Time:",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          Positioned(
            top: _height * 0.78,
            left: _width * 0.02,
            child: Container(
                height: _height * 0.05,
                width: _width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Text(Report.dateTime,
                        style: TextStyle(
                          fontSize: 20,
                        )))),
          ),
          Positioned(
              bottom: _height * 0.04,
              left: _width * 0.27,
              child: InkWell(
                onTap: () {
                  crudMethods.addData(report.toJson());
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Exit()));
                },
                child: Container(
                    height: _height * 0.1,
                    width: _width * 0.43,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xFF30EE8E),
                    ),
                    child: Center(
                        child: Text('Submit', style: TextStyle(fontSize: 25)))),
              ))
        ]));
  }
}
