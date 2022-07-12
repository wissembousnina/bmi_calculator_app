import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  BmiResult({
    required this.result,
    required this.isMale,
    required this.age,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Gender: ${isMale?'Male':'Female'}',
              style: TextStyle(
                fontSize:30 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'RESULT: $result',
              style: TextStyle(
                fontSize:30 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'AGE: $age',
              style: TextStyle(
                fontSize:30 ,
                fontWeight: FontWeight.bold,
              ),
            ),

            ],
        ),
      ),
    );
  }
}
