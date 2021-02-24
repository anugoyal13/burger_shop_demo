import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_new/varietypage.dart';
import 'homepage.dart';
import 'modelclass/modelpage.dart';
import 'package:flat_icons_flutter/flat_icons_flutter.dart';

class detailpage extends StatefulWidget {
  final variety obj;
 const detailpage(this.obj);
  @override
  _detailpageState createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.fastfood,color: Colors.redAccent,size: 30,),
          )
        ],
        backgroundColor: Colors.transparent,
        //shadowColor: Colors.deepOrange,
        iconTheme:IconThemeData(color: Colors.redAccent),
      ),*/
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              Stack(
                children: [
                  Container(
                    //color: Colors.yellowAccent,
                      height : MediaQuery.of(context).size.height* 0.75,
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(widget.obj.varietyimage,fit: BoxFit.fitWidth,),

                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:35.0,left:8,bottom:40),
                        child: Text(widget.obj.varietyname,style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,fontSize:35),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20,left:8.0,bottom: 130),
                        child: Text(widget.obj.varietyprice,style:TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold,fontSize:25),),
                      ),
                      /*Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              decorationColor: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              //labelText: "User Name",
                              //labelStyle: TextStyle(color: Colors.redAccent),
                              focusColor: Colors.white),
                        ),
                        )*/


                ],




              ),

            ],
          ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => homepage()));
                    //InkSplash(color: Colors.redAccent);
                  },
                  child: Text(
                    "Click to order",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              )
        ]
        ),
      ),
      )
    );
  }
}
