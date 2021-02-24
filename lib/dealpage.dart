import 'package:flutter/material.dart';
import 'modelclass/modelpage.dart';
import 'homepage.dart';

class dealpage extends StatefulWidget {
  final deals obj;
  const dealpage (this.obj);
  @override
  _dealpageState createState() => _dealpageState();
}

class _dealpageState extends State<dealpage> {
  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0,left:10,bottom: 20),
                child: Text(widget.obj.dealname,style: TextStyle(color:Colors.redAccent,fontSize: 28, fontWeight: FontWeight.bold),),

              ),
              Container(
                  height: screenheight*0.30,
                  width:screenwidth,

                  child: Image.asset(
                    widget.obj.dealimage,
                    fit: BoxFit.fill,
                  )),
              SizedBox(height:20),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text(widget.obj.dealdetails),
             ),
              SizedBox(height:20),

              Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                      onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (_) => homepage()));
                //InkSplash(color: Colors.redAccent);
              },
                      child: Text(
                       "customise your order here",
                        style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
          )

              ,

            ],

          ),
        ),
      ),
    );
  }
}
