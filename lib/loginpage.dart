import 'package:flutter/material.dart';
import 'package:online_shop_new/signuppage.dart';
import 'main.dart';
import 'homepage.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(child: Image.asset("assets/images/logo2.png")),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  style: TextStyle(
                      color: Colors.redAccent,
                      decorationColor: Colors.redAccent),
                  cursorColor: Colors.redAccent,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellowAccent,)),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.redAccent),
                      focusColor: Colors.redAccent),
                ),
              ),
              SizedBox(
                height: 25,
              ),
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
                    //InkSplash(color: Colors.redAccent);
                    },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => signuppage()));
                  //InkSplash(color: Colors.redAccent);
                },
                child: Text(
                  "New User? Create an Account",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
