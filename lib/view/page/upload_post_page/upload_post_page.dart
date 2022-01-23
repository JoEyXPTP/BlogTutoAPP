import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class UploadPostPage extends StatefulWidget {
  const UploadPostPage({Key? key}) : super(key: key);

  @override
  _UploadPostPageState createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
  var selectedCategoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: NeumorphicAppBar(
        title: Text("New Post"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
        SizedBox(
        height: 20,
      ),
      Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 8,
          lightSource: LightSource.topLeft,
        ),
        child: Container(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.photo),
              SizedBox(
                height: 20,
              ),
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
              hintText: "Enter Title",
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
              hintText: "Enter Description",
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10)
          ),
          minLines: 4,
          maxLines: 4,
        ),
      ),
      SizedBox(height: 20,),

      Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: -4,
          lightSource: LightSource.topLeft,
          ),

          child: DropdownButtonFormField<int>(
            onChanged: (i){

            },
            items: [
              DropdownMenuItem(child: Text("Larvel"),value: 1,)
            ],
            decoration: InputDecoration(
                hintText: "Select Category",
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10)
            ),

          ),
        ),
        SizedBox(height: 20,),
        NeumorphicButton(
          onPressed: (){

          },
          child: Center(
            child: Text(
              "Upload",
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
    );
  }
}
