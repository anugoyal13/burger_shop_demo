import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_new/dealpage.dart';
import 'package:online_shop_new/modelclass/modelpage.dart';
import 'package:online_shop_new/signuppage.dart';
import 'package:online_shop_new/varietypage.dart';
import 'main.dart';
import 'loginpage.dart';
import 'signuppage.dart';
import 'package:carousel_pro/carousel_pro.dart';



class homepage extends StatefulWidget {
  //int current=0;
 // List imglist=["img","meal2","img4","img5","img9","3"];
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.yellowAccent,
        shadowColor: Colors.deepOrange,
        iconTheme:IconThemeData(color: Colors.redAccent) ,
        title: Center(child: Text(" Mcdonalds demo",style: TextStyle(color: Colors.redAccent),)),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart,color: Colors.redAccent,size: 30,),
          )
        ]
        ,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:<Color>[
                  Colors.yellowAccent,
                  Colors.redAccent
                ])
              ),
              child: Container(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person,size: 70,),
                    //Image.asset("assets/images/person_icon.jpg",fit:BoxFit.fill,),
                    Text("Welcome ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
            ),
            InkWell(
             onTap:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) => loginpage()));
            },
              child: ListTile(
                  title: Text("Sign In/Sign Up"),
                  leading:Icon(Icons.person),
                  trailing: Icon(Icons.arrow_forward),
                ),
            ),
            ListTile(
              title: Text("Profile"),
              leading:Icon(Icons.bookmark_border),
              trailing: Icon(Icons.arrow_forward),
            ),

            ListTile(
              title: Text("Orders"),
              leading:Icon(Icons.bookmark_border),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Notifications"),
              leading:Icon(Icons.notifications),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Settings"),
              leading:Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
            ),

            ListTile(
              title: Text("Sign Out"),
              leading:Icon(Icons.lock),
              trailing: Icon(Icons.arrow_forward),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCarousel(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " Menu",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    " Full menu ->",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              width:600,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:menulist.length ,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (_) => varietypage(menulist[index])));

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              height:90,
                              width:90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(menulist[index].image,fit: BoxFit.fill,)),
                              ),
                            SizedBox(height: 10,),
                            Text(menulist[index].name,style: TextStyle(fontSize:15,fontWeight: FontWeight.w500)),

                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " Deals",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                 ],
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                reverse: true,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: deallist.length,
                itemBuilder:(context,index){
                  return InkWell(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => dealpage(deallist[index])));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height:130,
                            width:130,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(deallist[index].dealimage,fit: BoxFit.fill,)),
                          ),
                          SizedBox(height: 10,),
                          Text(deallist[index].dealname,style: TextStyle(fontSize:15,fontWeight: FontWeight.w500),),

                        ],
                      ),
                    ),
                  );




                })



          ],
        ),
      )


      );

  }
}
class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;
    return Container(
      height: screenheight*0.35,
      width:screenwidth,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Carousel(
            boxFit: BoxFit.contain,
            images: [
              AssetImage("assets/images/1.jpeg"),
              AssetImage("assets/images/meal2.jpeg"),
              AssetImage("assets/images/img4.jpeg"),
              AssetImage("assets/images/img5.jpeg"),
              //AssetImage("assets/images/img.png"),
            ],
            animationCurve: Curves.fastOutSlowIn,
           // animationDuration: Duration(milliseconds: 50),
          ),
        ),
      ),
    );
  }
}





