import 'package:flutter/material.dart';
import 'confirmation.dart';

class Describe extends StatelessWidget {
  final TextEditingController _describeEvent = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF1C8E6B),
      body: SingleChildScrollView(
        child: Column(
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
                child: Image.asset('assets/images/describe.png')),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: Padding(padding: EdgeInsets.all(20), child: describe()),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: RaisedButton(
                color: Color(0xFF30EE8E),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Confirm(
                          description: _describeEvent.text,
                          datetime: DateTime.now())));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
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
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[800], width: 1)),
      ),
    );
  }
}
