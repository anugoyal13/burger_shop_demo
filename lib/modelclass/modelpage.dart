import 'package:flutter/cupertino.dart';
import 'variety.dart';

class menu{
String name;
String image;
List<variety>varieties;

menu({this.name,this.image,this.varieties});
}

List<menu> menulist=[
  menu(
      name:"Burgers",
      image:"assets/images/burger.jpeg",
      varieties:[
        variety(
          varietyname: "Mayo Chicken",
          varietyimage:"https://www.mcdonalds.com/is/image/content/dam/uk/nfl/nutrition/nfl-product/product/products/mcdonalds-Mayo-Chicken.jpg",
          varietyprice: "£ 1.50",
          //varietydetail: ""

        ),
        variety(
          varietyname: "Double Big Mac",
          varietyimage:"https://www.mcdonalds.com/content/dam/ca/nfl/web/nutrition/products/tile/en/mcdonalds-double-big-mac.jpg",
          varietyprice: "£ 4.50",

        ),
        variety(
          varietyname: "Big Mac",
          varietyimage:"https://i.dlpng.com/static/png/5671861-mcdonalds-grand-big-mac-launches-in-australia-herald-sun-big-mac-transparent-650_488_preview.png",
          varietyprice: "£ 3.50",

        ),
        variety(
          varietyname: "Vegetable Delux",
          varietyimage:"https://www.mcdonalds.com/is/image/content/dam/uk/nfl/nutrition/nfl-product/product/products/mcdonalds-Vegetable-Deluxe.jpg",
          varietyprice: "£3.40",
        ),
        variety(
          varietyname: "Double Cheeseburger",
          varietyimage:"https://mcdonalds.co.nz/sites/mcdonalds.co.nz/files/Double%20Cheeseburger%20700x487.png",
          varietyprice: "£ 1.99",

        ),
        variety(
          varietyname: "McChicken burger",
          varietyimage:"https://5.imimg.com/data5/OA/GL/MY-33353830/mcchicken-burger-500x500.png",
          varietyprice: "£ 3.29",

        ),

      ]

  ),
  menu(
      name:"Fries & Sides",
      image:"assets/images/fries.jpg",
    varieties: [
      variety(
        varietyname: "Large fries",
        varietyimage: "https://i.pinimg.com/originals/f4/cf/12/f4cf12098fd69de9e254c812b94c7dcf.jpg",
        varietyprice: "£1.49"
      ),
      variety(
          varietyname: "Medium fries",
          varietyimage: "https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-Fries-Small-Medium.jpg",
          varietyprice: "£1.19"
      ),
      variety(
          varietyname: "small fries",
          varietyimage: "https://d1nqx6es26drid.cloudfront.net/app/uploads/2015/04/04044451/product-french-fries.png",
          varietyprice: "£0.99"
      ),
      variety(
          varietyname: "McNuggets",
          varietyimage: "https://i2-prod.mirror.co.uk/incoming/article14626532.ece/ALTERNATES/s615/2_Chicken-nuggets-piled-together-isolated-on-white-background.jpg",
          varietyprice: "£3.49"
      ),
      variety(
          varietyname: "Side Salad",
          varietyimage: "https://www.mcdonalds.com/content/dam/uk/nfl/nutrition/nfl-product/product/related/mcdonalds-Shaker-Side-Salad.jpg",
          varietyprice: "£1.49"
      ),

    ]
  ),
  menu(
      name:"McCafe Hot Drinks",
      image:"assets/images/hotdrink.jpeg",
      varieties: [
        variety(
          varietyname: "McCafe Latte",
          varietyimage: "https://www.mcdonalds.com/is/image/content/dam/usa/nfl/nutrition/items/hero/desktop/t-mcdonalds-McCafe-Latte-Medium.jpg",
          varietyprice: "£1.49"
        ),
        variety(
            varietyname: "McCafe Cappuccino",
            varietyimage: "https://q.dam-img.rfdcontent.com/offers/004/418/750/600x600_smart_fit.jpg",
            varietyprice: "£1.49"
        ),
        variety(
            varietyname: "McCafe Black Coffee",
            varietyimage: "https://d1nqx6es26drid.cloudfront.net/app/uploads/2015/04/16021931/product-long-black.png",
            varietyprice: "£1.69"
        ),
        variety(
            varietyname: "McCafe Espresso",
            varietyimage: "https://d1nqx6es26drid.cloudfront.net/app/uploads/2015/04/16022128/product-espresso.png",
            varietyprice: "£1.29"
        )

      ]
  ),
  menu(
      name:"Ice Cream",
    image: "assets/images/ice1.jpeg",
    varieties: [
      variety(
        varietyname: "Oreo Mini McFlurry",
        varietyimage: "https://www.mcdonalds.com/is/image/content/dam/uk/nfl/nutrition/nfl-product/product/products/mcdonalds-Oreo-McFlurry.jpg",
        varietyprice: "£0.99"
      ),
      variety(
          varietyname: "Choclate McFlurry",
          varietyimage: "https://i.pinimg.com/originals/d1/3d/7b/d13d7b08ea8870a62cb4bfda2627defc.jpg",
          varietyprice: "£0.99"
      ),
      variety(
          varietyname: "Smarties McFlurry",
          varietyimage: "https://www.mcdonalds.com/content/dam/uk/nfl/nutrition/nfl-product/product/related/mcdonalds-Smarties-McFlurry.jpg",
          varietyprice: "£0.99"
      ),
      variety(
          varietyname: "Maltesers McFlurry",
          varietyimage: "https://www.mcdonalds.com/is/image/content/dam/uk/nfl/nutrition/nfl-product/product/products/mcdonalds-Maltesers-McFlurry.jpg",
          varietyprice: "£0.99"
      ),

    ]

  ),
  /*menu(
      name:"Full menu",
      image: ""
  ),*/

];


class deals{
  String dealname;
  String dealimage;
  String dealdetails;

  deals({this.dealname,this.dealimage,this.dealdetails});
}
List<deals> deallist=[
  deals(
    dealname: "buy1get1 free",
    dealimage: "assets/images/deal1.jpeg",
    dealdetails:''' This deal is available only on family meals.if you buy a family meal ,then get another family meal in free.This offer is valid only on weekdays.''',
  ),
  deals(
      dealname: "Mix & Match Deal",
      dealimage: "assets/images/deal2.png",
      dealdetails:''' This Mix & Match deal is only in £9 with small size.Make any favourite combo of your choice in just £9.This offer is valid only in small size portions and not on meals.''',
  ),
  deals(
      dealname: "20% off on a meal ",
      dealimage: "assets/images/deal3.jpeg",
      dealdetails: '''  Get 20% off on your first order.This offer is valid only till xmas .its available only in large sizes meals only.''',
  ),
  deals(
      dealname: "Lunch Deal",
      dealimage: "assets/images/deal4.jpeg",
      dealdetails:'''Get a perfect combo for yor lunch meal in just £15.Its comes with a Mcveggie burger with medium fries and small bowl of salad with a soft drink .''',
  ),
];
class variety{
  String varietyname;
  String varietyimage;
  String varietyprice;
  String varietydetail;

  variety({this.varietyname,this.varietyimage,this.varietyprice,this.varietydetail});

}
/*class detail{
  String detname;
  String detimg;
  String detdescription;
  detail({this.detname,this.detimg,this.detdescription});

}*/