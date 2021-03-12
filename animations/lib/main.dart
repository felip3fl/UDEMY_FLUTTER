import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations Intro',
      debugShowCheckedModeBanner: false,
      home: LogoApp(),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;


  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        vsync: this,
      duration: Duration(seconds: 2),

    );

    animation = Tween<double>(begin: 0, end: 300).animate(controller);

    animation.addListener((){
      setState(() {

      });
    });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}
