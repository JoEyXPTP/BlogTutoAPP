import 'package:flutter/material.dart';

import 'package:blog_tuto_app/view/page/profile_page/profile_page.dart';
import 'package:blog_tuto_app/view/page/upload_post_page/upload_post_page.dart';
import 'package:blog_tuto_app/view/widget/post_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class  CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}


class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text("Laravel"),
       ),
      body: ListView(
        padding: EdgeInsets.only(left: 16,right: 16),
        children: [
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
