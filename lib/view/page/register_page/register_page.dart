import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  File ?_file;//null


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text("Register"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            NeumorphicButton(
              onPressed: pickImage,
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 8,
                lightSource: LightSource.topLeft,
              ),
              child: Container(
                width: 100,
                height: 100,
                child: _file!=null? Image.file(_file); Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Upload\n Photo",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: -4,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: -4,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Email",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: -4,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            NeumorphicButton(
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                // lightSource: LightSource.topLeft,
              ),
            )
          ],
        ),
      ),
    );
  }
  final picker = ImagePicker();

  pickImage()async{
    Future getImage() async{
      final ImagePicker _picker = ImagePicker();
      // Pick an image
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      final pickerFile = await picker.pickImage(source: ImageSource.camera,);

      setState(() {
        if (pickerFile != null) {
          _file = picker
        } else {
          print("No image selected");
        }
      });
    }
  }
}
