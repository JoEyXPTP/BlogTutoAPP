import 'package:blog_tuto_app/view/page/login_page/login_page.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){

      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      }));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
