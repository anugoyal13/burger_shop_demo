import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detailpage.dart';
import 'modelclass/modelpage.dart';


class varietypage extends StatefulWidget {
  final menu obj;
  const varietypage(this.obj);
  @override
  _varietypageState createState() => _varietypageState();
}

class _varietypageState extends State<varietypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text(widget.obj.name,style: TextStyle(color: Colors.redAccent,fontSize: 25)),
          backgroundColor: Colors.yellowAccent,
          //shadowColor: Colors.deepOrange,
          iconTheme:IconThemeData(color: Colors.redAccent),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
               //scrollDirection: Axis.horizontal,
                itemCount:widget.obj.varieties.length ,
                shrinkWrap: true,
                reverse: true,
                physics: NeverScrollableScrollPhysics(),

                itemBuilder: (context,index){
                  return InkWell(
                      onTap:(){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) => detailpage(widget.obj.varieties[index])));
                        },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height:90,
                              width:90,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network(widget.obj.varieties[index].varietyimage,fit: BoxFit.fill,)),
                            ),
                            SizedBox(width: 30,),
                            Container(
                              height:90,
                              width:200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                //crossAxisAlignment: AlignmentDirectional.topStart
                                children: [
                                  Text(widget.obj.varieties[index].varietyname,style: TextStyle(fontSize:18,fontWeight: FontWeight.w500)),
                                  SizedBox(height: 10,),
                                  Text(widget.obj.varieties[index].varietyprice,style: TextStyle(fontSize:15,fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),

                         ],
                        ),

                      ),
                    ),
                  );
                }),
              //title: Text(widget.obj),
            //)
          ],
        ),
      ),
    );
  }
}

