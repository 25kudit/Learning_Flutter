// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset(
                "assets/images/login_image.png",
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Welcome",
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
                  decoration: InputDecoration(
                      labelText: "Username", hintText: "Enter Username"),
                ),
              ),
              SizedBox(
                height: 70,
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/home");
                },
                
                style: TextButton.styleFrom(minimumSize: Size(100, 40),
                  shadowColor: Colors.grey
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 17),
                  ),
              )
            ],
          ),
        )
    );
  }
}
