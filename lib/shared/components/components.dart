import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
   Color background=Colors.blue ,
  bool isUppercase=true,
  
  required  VoidCallback  function,
  required String text,
})=> Container(
  height: 40,
  color: background,
  width: width,
  decoration: BoxDecoration(

  ),
  child: MaterialButton(
    onPressed:function,

    child: Text(
      isUppercase?text.toUpperCase():text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);