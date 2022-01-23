import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.only(top: 5,bottom: 15),
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          depth: 8,
          lightSource: LightSource.topLeft,
          //color: Colors.grey
        ),
        child: Container(

          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlutterLogo(size: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("Title", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    SizedBox(height: 3,),
                    Text("11/10/20", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.grey
                    ),),

                    SizedBox(height: 10,),
                    Text("Hello,Hi everyone,", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                    ),),
                  ],
                ),
              ),
             ],
          ),
        )
    );
  }
}
