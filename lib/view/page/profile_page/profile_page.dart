import 'package:blog_tuto_app/view/widget/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.of(context)!.isUsingDark ? Colors
          .blueGrey : Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text("Profile", style: TextStyle(
            fontWeight: FontWeight.bold

        ),),
        actions: [
          Switch(
            value: NeumorphicTheme.of(context)!.isUsingDark,
            onChanged: (bool value) {
              if (NeumorphicTheme.of(context)!.isUsingDark) {
                NeumorphicTheme.of(context)!.themeMode = ThemeMode.light;
              } else {
                NeumorphicTheme.of(context)!.themeMode = ThemeMode.dark;
              }
            },
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: 8,
                lightSource: LightSource.topLeft,
                //color: Colors.grey
              ),
              child: Container(
                height: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(size: 50,),
                    SizedBox(
                      height: 10,
                    ),
                    Text("MG MG", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Text("mgmg@gmail.com", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    SizedBox(height: 20,),
                    NeumorphicButton(
                      margin: EdgeInsets.only(left: 20,right: 20),
                      onPressed: (){

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.exit_to_app),
                          Text("Logout"),
                        ],
                      ),
                    )

                  ],
                ),
              )
          ),
          SizedBox(height: 20,),
          Text("Your Post",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          SizedBox(height: 20,),

          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
        ],
      ),
    );
  }
}
