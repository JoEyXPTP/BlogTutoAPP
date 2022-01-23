import 'package:blog_tuto_app/view/page/category_page/category_page.dart';
import 'package:blog_tuto_app/view/page/profile_page/profile_page.dart';
import 'package:blog_tuto_app/view/page/upload_post_page/upload_post_page.dart';
import 'package:blog_tuto_app/view/widget/post_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text("Blog App"),
        leading: NeumorphicButton(
          child: Icon(Icons.person),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return ProfilePage();
            }));
          },
        ),
        actions: [
          NeumorphicButton(
            child: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                return UploadPostPage();
              }));

            },
          ),

        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 16,right: 16),
        children: [
          Container(
            height: 80,
            child: ListView(
              padding: EdgeInsets.only(top: 16,bottom: 16),

              scrollDirection: Axis.horizontal,
              children: [
                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                      return CategoryPage();
                    }));
                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),


                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){

                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),



                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){

                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),


                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){

                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),


                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){

                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),


                NeumorphicButton(
                  margin: EdgeInsets.only(right: 10),
                  onPressed:(){

                  },
                  child: Center(child: Text("Laravel")),
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                  ),
                ),



              ],
            ),
          ),
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
