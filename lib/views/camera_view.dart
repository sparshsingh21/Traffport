import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:traffport/services/crud.dart';
import 'describe.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CrudMethods crudMethods = new CrudMethods();
  File selectedImage;
  String value;
  final picker = ImagePicker();

  Future getImage() async {
    final image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      selectedImage = File(image.path);
    });
  }

  uploadPhoto() async {
    if (selectedImage != null) {
      StorageReference firebaseStorageRef = FirebaseStorage.instance
          .ref()
          .child("reportImages")
          .child("${randomAlphaNumeric(9)}.jpg");

      final StorageUploadTask task = firebaseStorageRef.putFile(selectedImage);

      var downloadUrl = await (await task.onComplete).ref.getDownloadURL();
      print('This is Url: $downloadUrl');

      setState(() {
        value = downloadUrl;
      });
    } else {}
  }

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
            GestureDetector(
              onTap: () {
                getImage();
              },
              child: selectedImage != null
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Image.file(
                        selectedImage,
                        fit: BoxFit.cover,
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          color: Colors.grey),
                      child: Center(
                          child: Icon(
                        Icons.camera,
                        size: 50,
                      )),
                    ),
            ),
            SizedBox(
              height: 50,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: RaisedButton(
                color: Color(0xFF30EE8E),
                onPressed: () {
                  uploadPhoto();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Describe(url: value)));
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
        ));
  }
}
