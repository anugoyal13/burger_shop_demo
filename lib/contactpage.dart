import 'package:flutter/material.dart';
import 'main.dart';

class contactpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.yellowAccent,
      body:Padding(
        padding: const EdgeInsets.only(top:100.0),
        child: Center(
          child: Column(
              children: [
                Text("Email Id :",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.redAccent),),
                SizedBox(height: 15,),
                Text("mcdonalds@gmail.com"),
                SizedBox(height: 15,),
                Text("Contact Number:",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.redAccent),),
                SizedBox(height: 15,),
                Text("+44-7423456687"),
],
),
        ),
      )
    );
  }
}
