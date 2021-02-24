import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'contactpage.dart';
import 'signuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:online_shop(),
    );
  }
}

class online_shop extends StatefulWidget {
  @override
  _online_shopState createState() => _online_shopState();
}

class _online_shopState extends State<online_shop> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      //backgroundColor: Colors.blueGrey,
      body:Column(
        children: [
          Stack(
             children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => homepage() ));
                    },
                  child: Container(
                    decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.green.withOpacity(0.5),spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),)]),
                   height: ScreenHeight*0.9,
                    width:ScreenWidth,
                    child: Image.asset("assets/images/logo1.jpg",fit: BoxFit.fill,)),
                ),


            ),
    ]
              )
               /*Row(
                 mainAxisAlignment:MainAxisAlignment.end ,
                 children: [
                   FlatButton(
                     onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (_)=>loginpage()));
                     },
                     child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.redAccent),),

                   ),

                   FlatButton(
                     onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (_)=>signuppage())); },
                     child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.redAccent),),

                   ),
                   FlatButton(
                     onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (_)=>contactpage()));
                     },
                     child: Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.redAccent),),

                   ),
                 ],


               ),*/


      ]
          )


      );

  }
}
