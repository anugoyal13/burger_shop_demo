import 'package:flutter/material.dart';
import 'main.dart';
import 'homepage.dart';

class signuppage extends StatefulWidget {
  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(child: Text(" Create Account",style: TextStyle(color:Colors.redAccent,fontSize: 25,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "Full Name",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "Email Id",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "Address",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "Mobile Number",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "User Name",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent)),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              SizedBox(height:20 ,),
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => homepage()));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

