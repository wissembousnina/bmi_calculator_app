import 'package:bmicalculator/modules/bmi_result/bmi_result.dart';
import 'package:bmicalculator/modules/bmi/bmi_screen.dart';
import 'package:flutter/material.dart';

import 'modules/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:LoginScreen() ,
  );
  }

}