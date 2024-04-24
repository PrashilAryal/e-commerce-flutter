import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/admin/home_admin.dart';

const String _adminUsername = 'peter';
const String _adminPassword = '123456';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _loginAdmin() {
    if (_formKey.currentState!.validate()) {
      final enteredUsername = _usernameController.text.trim();
      final enteredPassword = _passwordController.text.trim();

      // Check against hardcoded admin credentials
      if (enteredUsername == _adminUsername && enteredPassword == _adminPassword) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeAdmin()),
        );
      } else {
        // Show snackbar for incorrect credentials
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Incorrect username or password",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFededeb),
    body: SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.all(20.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(
    "Let's start with\nAdmin!",
    style: TextStyle(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 30.0),
    Form(
    key: _formKey,
    child: Column(
    children: [
    TextFormField(
    controller: _usernameController,
    decoration: InputDecoration(
    hintText: "Username",
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter username';
    }
    return null;
    },
    ),
      SizedBox(height: 20.0),
      TextFormField(
        controller: _passwordController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          }
          return null;
        },
      ),
      SizedBox(height: 40.0),
      ElevatedButton(
        onPressed: _loginAdmin,
        child: Text(
          "Log In",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}
