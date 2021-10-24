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

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                  decoration: InputDecoration(
                      labelText: "Username", hintText: "Enter Username"),
                  onChanged: (val) {
                    name = val;
                    setState(() {});
                  },
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
              InkWell(
                onTap: () async {
                  setState(() {
                    statechange = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, "/home");
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: statechange ? 50 : 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(statechange ? 25 : 8),
                    color: Colors.deepPurple,
                  ),
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
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, "/home");
              //   },
              //   style: TextButton.styleFrom(
              //       minimumSize: Size(100, 40), shadowColor: Colors.grey),
              //   child: Text(
              //     "Login",
              //     style: TextStyle(fontSize: 17),
              //   ),
              // )
            ],
          ),
        ));
  }
}
