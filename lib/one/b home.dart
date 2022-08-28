import 'package:flutter/material.dart';
import 'package:talabaty/one/data.dart';

import '../day10/d10.dart';
import 'detailes.dart';


class home extends StatefulWidget {




  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,

          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 7, 13, 0),
              child: Stack(
                children: [
                  Icon(Icons.notifications_none_rounded, color: Colors.black,
                    size: 37,),
                  Container(
                    margin: EdgeInsets.fromLTRB(27, 3, 0, 0),
                    width: 11, height: 11,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                    ),
                  )
                ],
              ),
            ) //Notification
          ],

          title:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black,
                size: 37,),
              Text("ٍ$location",
                style: TextStyle(color: Colors.black, fontSize: 23),)
            ],
          ),

          leading: Icon(Icons.search, color: Colors.black, size: 37,),

        ),

        body:

            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom:13),
                      height:  MediaQuery.of(context).size.height/5,
                      width: MediaQuery.of(context).size.width,
                      child:
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          category(name18, pic18, Colors.black),
                          category(name17, pic17, Colors.black),
                          category(name16, pic16, Colors.black),
                          category(name15, pic15, Colors.black),
                          category(name14, pic14, Colors.black),
                          category(name13, pic13, Colors.black),
                          category(name12, pic12, Colors.black),
                          category(name11, pic11, Colors.black),
                          category(name10, pic10, Colors.black),
                          category(name9, pic9, Colors.black),
                          category(name8, pic8, Colors.black),
                          category(name7, pic7, Colors.black),
                          category(name6, pic6, Colors.black),
                          category(name5, pic5, Colors.black),
                          category(name4, pic4, Colors.black),
                          category(name3, pic3, Colors.black),
                          category(name2, pic2, Colors.black),
                          Container(
                            child: Stack(
                              children: [
                                category(name1, pic1, Color(0xfff6323e)),
                                Positioned(
                                  top: 10,
                                  child:
                                Container(
                                    width: 30, height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                        border: Border.all(width: 1, color: Colors
                                            .white)
                                    ),
                                    child: Center(
                                      child: Text("239", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13),),
                                    )
                                ),
                                )
                              ],
                            ),
                          ) // the first one
                        ],
                      ),
                    ), // Category
                    // category
                    Container(
                      height: MediaQuery.of(context).size.height/1.5,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [

                          Column(

                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 13),
                                    child:
                                    Column(
                                      children: [
                                        Text("المحلات الاكثر شيوعاً",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,
                                            fontFamily: "Cario",color: Color(0xfff6323e)
                                        ),),
                                        Container(
                                          height: 3, width: 190,
                                          color: Color(0xfff6323e),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ), // Tabview

                              Container(
                                margin: EdgeInsets.only(top: 7),
                                height: 170, width: 700,
                                child:
                                ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [

                                    restaurant("عروس دمشق","image/r4.png"),
                                    restaurant0("بيتزا روما","image/r3.png"),
                                    restaurant0("بركر ميكرز","image/r2.png"),
                                    restaurant("زرزور","image/r1.png"),

                                  ],
                                ),
                              ), //restaurant view

                              Container(
                                height: 37,
                                margin: EdgeInsets.only(bottom: 27),
                                child:  ListView(
                                  reverse: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: 73,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("الكل", style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.home, color: Colors.white,),
                                        ],
                                      ),
                                    ), //home
                                    Container(
                                      width: 90,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("خصومات", style: TextStyle(color: Colors.grey,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.percent, color: Colors.grey,),
                                        ],
                                      ),
                                    ), // sales
                                    Container(
                                      width: 115,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("يدعم المحفظة", style: TextStyle(color: Colors.grey,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.account_balance_wallet_outlined, color: Colors.grey,),
                                        ],
                                      ),
                                    ), // wallet
                                    Container(
                                      width: 115,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("توصيل مجاني", style: TextStyle(color: Colors.grey,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.delivery_dining_outlined, color: Colors.grey,),
                                        ],
                                      ),
                                    ), // free delivery
                                    Container(
                                      width: 77,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("حصري", style: TextStyle(color: Colors.grey,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.star_border_purple500_outlined, color: Colors.grey,),
                                        ],
                                      ),
                                    ), // star
                                    Container(
                                      width: 90,
                                      margin: EdgeInsets.symmetric(horizontal: 7),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(17)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("جديد", style: TextStyle(color: Colors.grey,
                                              fontWeight: FontWeight.bold),),
                                          Icon(Icons.store_outlined, color: Colors.grey,),
                                        ],
                                      ),
                                    ), //new

                                  ],
                                ),
                              ),

                              restaurant1(
                                "هايزن",
                                "https://i.ytimg.com/vi/yR6XMD60iVA/maxresdefault.jpg",
                                10000,
                                "المنصور_14 رمضان",
                                "جيد جدا",
                                1000,
                              ),
                              restaurant1(
                                "وينكز",
                                "https://scontent.fbgw41-1.fna.fbcdn.net/v/t1.6435-9/88445847_521158008538017_4229030885057363968_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=730e14&_nc_ohc=kiHvATeGd5oAX81Or4w&_nc_ht=scontent.fbgw41-1.fna&oh=00_AT_xEDY_bYDBfJPceGmj4Hty_ZyQktSXbgx6V59Y3l3dtA&oe=632CDB9E",
                                1000,
                                "حي الجامعة_شارع الربيع",
                                "ممتاز",
                                3000,
                              ),
                              restaurant1(
                                "جايدة تمام",
                                "https://www.justfood.tv/nawa3emPics/zinger.jpg",
                                10000,
                                "الدورة_ابو الطيارة",
                                "فول الفول",
                                3000,
                              )
                            ],
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ],
            ),



      bottomNavigationBar:
      Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff5e3d7).withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle_outlined, color: Color(0xff948476), size: 37,),
                Text("الحساب",style: TextStyle(fontSize: 13, color: Color(0xff948476)),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("image/bill.png", height: 35, width: 35,),
                Text("الطلبات",style: TextStyle(fontSize: 13, color: Color(0xff948476)),)

              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet_outlined, color: Color(0xff948476), size: 37,),
                Text("المحفظة",style: TextStyle(fontSize: 13, color: Color(0xff948476)),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, color: Color(0xfff6323e), size: 37,),
                Text("الرئيسية",style: TextStyle(fontSize: 13, color: Color(0xfff6323e)),)
              ],
            )



          ],
        ),
      )
        ,

    );




  }

  Container category(
      String name00,
      String img00,
      Color color00,
      ){
    return
      Container(
        margin: EdgeInsets.fromLTRB(7, 7, 7, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height/9,
              width: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("$img00",),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15)
              ),
            ),
            SizedBox(height: 3,),
            Text("$name00",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,
                fontFamily: "Cario",color: color00 ),)
          ],
        ),
      )
    ;
  }

  restaurant1(
      String name77,
      String img77,
      int min77,
      String loc77,
      String rate77,
      int price77,

      ){
    return
      GestureDetector(
        child: Container(
          width: 600,
          margin: EdgeInsets.only(bottom: 17),
          child:
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 170, width: 600,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("$img77",),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                        SizedBox(height: 5,),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 28, top: 12,
                    child:
                    Container(
                      height: 35, width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white
                      ),
                      child: Icon(Icons.delivery_dining_outlined,color: Colors.red,),
                    ),),
                ],

              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("الحد الادنى للطلب:  $min77 د.ع",style: TextStyle(
                        color: Colors.grey,  fontSize: 15, fontFamily: "cario"
                    ),),
                    Text("$name77",style: TextStyle(color: Colors.red,
                        fontSize: 19, fontWeight: FontWeight.bold, fontFamily: "cario"
                    ),),
                  ],
                ),

              ),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 11),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("سعر التوصيل: $price77دزع",style: TextStyle(color: Colors.grey,
                            fontSize: 13, fontFamily: "cario"
                        ),),
                        Icon(Icons.delivery_dining_outlined,color: Colors.grey),
                      ],
                    ),


                    SizedBox(width: 7,),

                    Row(
                      children: [
                        Text("$rate77",style: TextStyle(color: Colors.grey,
                            fontSize: 13, fontFamily: "cario"
                        ),),
                        Icon(Icons.emoji_emotions_outlined,color: Colors.grey),
                      ],
                    ),

                    SizedBox(width: 7,),

                    Row(
                      children: [
                        Text("$loc77",style: TextStyle(color: Colors.grey,
                            fontSize: 13, fontFamily: "cario"
                        ),),
                        Icon(Icons.location_on_outlined,color: Colors.grey),
                      ],
                    )
                  ],
                )
                ,
              )
            ],
          ),
        ),
        onTap: (){
          Navigator.of(context)
              .push(MaterialPageRoute(builder:(context) => d10(
            name0: name77,
            img0: img77,
            min0: min77,
            loc0: loc77,
            rate0: rate77,
            price0: price77,
          )));
        },
      )

    ;
  }

}
