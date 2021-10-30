// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool statechange = false;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/login_image.png",
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text("Welcome $name",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      if (val != "Udit") {
                        return "invalid username";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Username", hintText: "Enter Username"),
                    onChanged: (val) {
                      name = val;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 70,
                  width: 300,
                  child: TextFormField(
                    obscureText: true,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (val.length < 6) {
                        return "Password length cannot be less than 6";
                      } else if (val != "1234567") {
                        return "invalid password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(statechange ? 25 : 8),
                  child: InkWell(
                    onTap: () async {
                      if (_formkey.currentState!.validate()) {
                        setState(() {
                          statechange = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, "/home");
                        setState(() {
                          statechange = false;
                        });
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width: statechange ? 50 : 130,
                      child: Align(
                        alignment: Alignment.center,
                        child: statechange
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
