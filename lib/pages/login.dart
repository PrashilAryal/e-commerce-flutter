import 'package:e_commerce/pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_support.dart';


class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  // String email = "", password = "";
  //
  // final _formkey= GlobalKey<FormState>();
  //
  // TextEditingController useremailcontroller = new TextEditingController();
  // TextEditingController userpasswordcontroller = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF4287f5),
                        Color(0xFFe74b1a),
                      ])),
            ),
            Container(
              margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(children: [
                Center(
                  child: Image.asset(
                    "assets/camp.png",
                    width: MediaQuery.of(context).size.width / 1.5,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "Login",
                          style: AppWidget.HeadlineTextFieldStyle(),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),

                        SizedBox(
                          height: 30.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: AppWidget.semiBoldTextFieldStyle(),
                            prefixIcon: Icon(Icons.password_outlined),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                            alignment: Alignment.topRight,
                            child: Text("Forgot password?", style: AppWidget.semiBoldTextFieldStyle())),
                        SizedBox(height: 80.0,),
                        Material(
                          elevation: 5.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFF4287f5),
                                ),
                            child: Center(
                              child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'Poppins1', fontWeight: FontWeight.bold),),
                              
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                        
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => SignUp()));
                            },
                            child: Text("Don't have the account? Sign Up",style: AppWidget.semiBoldTextFieldStyle(),))
                      ],
                    ),
                  )
                )
              ],),
            ),
          ],
        ),
      ),
    );
  }
}