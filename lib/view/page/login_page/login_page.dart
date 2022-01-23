
import 'package:blog_tuto_app/view/page/home_page/home_page.dart';
import 'package:blog_tuto_app/view/page/register_page/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 80,),
            FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 80,),

            Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  depth: -4,
                  lightSource: LightSource.topLeft,
                  color: Colors.grey
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Email",
                  border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)
                ),
              ),
            ),


            SizedBox(height: 20,),

            Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -4,
                    lightSource: LightSource.topLeft,
                    color: Colors.grey
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)
                  ),
                  obscureText: true,
                ),
            ),


            SizedBox(height: 30,),

            NeumorphicButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              },
              child: Center(
                child: Text("Login",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                // lightSource: LightSource.topLeft,
              ),
            ),

            SizedBox(height: 20,),

            NeumorphicButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return RegisterPage();
                }));
              },
              child: Center(
                child: Text("Register",style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
              ),
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
               // lightSource: LightSource.topLeft,
              ),
            )

          ],
        ),
      ),
    );
  }
}
