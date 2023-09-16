import 'package:flutter/material.dart';
import 'const.dart';
import 'login_screen.dart';




void main(){
  runApp(farmerScreen());
}


class farmerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginScreen(),
      title: appName,
      debugShowCheckedModeBanner: false,
    );
  }
}