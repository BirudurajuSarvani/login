import 'package:flutter/material.dart';
import 'package:sarvani_task/LogInPage.dart';



void main() {
  runApp( MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LogInPage() ,
    );
  }
}


