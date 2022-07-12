import 'dart:math';

import 'package:bmicalculator/modules/bmi_result/bmi_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget{
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale=true;
  double height = 120.0;
  int weight=60;
  int age=20;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(
         'BMI SCREEN',
       ),
       centerTitle: true,
     ),
     body: Column(
       children: [
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(
               children: [
                 Expanded(
                   child: GestureDetector(
                     onTap: (){setState(() {

                     });
                       isMale =true;
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         color:isMale?Colors.blue : Colors.grey[400],
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          Image(
                              image: AssetImage('assets/images/male.png'),
                            height: 90,
                            width: 90,

                          ),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                             'MALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 20.0,
                 ),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){setState(() {

                     });
                       isMale=false;
                     },
                     child: Container(
                       decoration: BoxDecoration(
                         color:isMale? Colors.grey[400]:Colors.blue,
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Image(
                               image:AssetImage('assets/images/female.png'),
                             height: 90,
                             width: 90,
                           ),
                           SizedBox(
                             height: 5,
                           ),
                           Text(
                             'FEMALE',
                             style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Container(
               decoration: BoxDecoration(
                 color: Colors.grey[400],
                 borderRadius: BorderRadius.circular(10.0),
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     'HEIGHT',
                     style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   SizedBox(
                     height: 5.0,
                   ),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline: TextBaseline.alphabetic,
                     mainAxisAlignment: MainAxisAlignment.center,

                     children: [
                       Text(
                         '${height.round()}',
                         style: TextStyle(
                           fontWeight: FontWeight.w900,
                           fontSize: 40,
                         ),
                       ),
                       Text(
                         'CM',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w900,
                         ),
                       ),
                     ],
                   ),
                   Slider(
                     value:height,
                     max: 220.0,
                     min: 80.0,
                     onChanged: (value){
                       setState(() {
                         height = value;
                       });
                     },
                   ),
                 ],
               ),
             ),
           ),
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: Row(

               children: [
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.grey[400],
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'WEIGHT',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '$weight',
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight--;
                                 });
                               },
                               child: Icon(
                                 Icons.remove,
                               ),
                               heroTag: 'weght--',
                               mini: true,
                             ),
                             FloatingActionButton(
                               onPressed: (){
                                 setState(() {
                                   weight++;
                                 });
                               },
                               child: Icon(
                                 Icons.add,
                               ),
                               heroTag: 'weight++',
                               mini: true,
                             ),
                           ],
                         ),
                         ],
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 20,
                 ),
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.grey[400],
                       borderRadius: BorderRadius.circular(10.0),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'AGE',
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           '$age',
                           style: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.w900,
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             FloatingActionButton(
                               onPressed: (){setState(() {

                               });
                                 age--;
                               },
                               child: Icon(
                                 Icons.remove,
                               ),
                               heroTag: 'age--',
                               mini: true,
                             ),
                             FloatingActionButton(
                               onPressed: (){setState(() {

                               });
                                 age++;
                               },
                               child: Icon(
                                 Icons.add,
                               ),
                               heroTag: 'age++',
                               mini: true,
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
         Container(
           color: Colors.blue,
           width: double.infinity,
           child: MaterialButton(
               onPressed:(){
                double result= weight/pow(height/100,2);
                print(result.round());
                Navigator.push(
                  context, MaterialPageRoute(
                  builder:(context)=>BmiResult(
                    result: result.round(),
                    isMale: isMale,
                    age: age,
                  ) ,
                ),
                );
               },
             child: Text(
               'CALCULATE',
               style: TextStyle(
                 color: Colors.white,
               ),
             ),
           ),
         ),
       ],
     ),
   );
  }
}