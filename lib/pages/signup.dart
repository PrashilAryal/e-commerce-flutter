import 'package:e_commerce/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                        Color(0xFF4287f5), // Lighter blue color
                        Color(0xFF0e5fbc), // Darker blue color
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
                      height: MediaQuery.of(context).size.height / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "SignUp",
                            style: AppWidget.HeadlineTextFieldStyle(),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: AppWidget.semiBoldTextFieldStyle(),
                                prefixIcon: Icon(Icons.person_2_outlined)),
                          ),
                          SizedBox(height: 20.0,),
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
                                child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18.0,fontFamily: 'Poppins1', fontWeight: FontWeight.bold),),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70.0,
                          ),

                          GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LogIn()));
                              },
                              child: Text("Already have an account? Log in",style: AppWidget.semiBoldTextFieldStyle(),))
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