import 'package:bmicalculator/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var formkey= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
             key:formkey ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold

                    ),
                  ),
                  SizedBox(
                    height:   40.0,
                  ),
                  TextFormField(
                    controller: emailcontroller ,
                    onFieldSubmitted: (value)
                    {
                      print(value);
                    },
                    onChanged: (value)
                    {
                      print(value);
                    },
                    validator: (value){
                      if (value!.isEmpty){
                        return'The email address must not be empty';

                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,


                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordcontroller,
                    obscureText: true,
                    onFieldSubmitted: (value)
                    {
                      print(value);
                    },
                    onChanged: (value)
                    {
                      print(value);
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return 'the password mus not be empty';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                 defaultButton(


                     function: (){
                       if(formkey.currentState!.validate()){
                         print(emailcontroller.text);
                         print(passwordcontroller.text);
                       }

                     },
                     text: 'login',


                 ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account',
                      ),
                      TextButton(onPressed: ()
                      {

                      },
                        child: Text
                          (
                            'Register Now'
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}
