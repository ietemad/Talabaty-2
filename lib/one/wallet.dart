import 'package:flutter/material.dart';


class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("المحفظة",
          style: TextStyle(fontSize: 19, color: Colors.black,
           fontFamily: "cario" ),),
        centerTitle: true,
      ),

      backgroundColor:  Color(0xfffdfdfe),

      body:
          Center(
            child:
              Container(
                height: MediaQuery.of(context).size.height/1.7,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("image/walletp.png",
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width/2,
                    ),
                    Text("قم بتسجيل الدخول لمعرفة رصيد المحفظة",
                      style: TextStyle(fontSize: fsn(), fontFamily: "cario" ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width/1.5,
                        height: MediaQuery.of(context).size.height/13,
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xfff6323e),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),// Background color
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text("تسجيل الدخول",style: TextStyle(fontSize: fsn(), fontFamily: "cario",
                                  fontWeight: FontWeight.bold), ),],
                            )
                        )
                    ),


                  ],
                ),
              )



          ),

      bottomNavigationBar:
      Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Color(0xfff2f2f2).withOpacity(0.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_circle_outlined, color: Color(0xffbdbdbd), size: 37,),
                Text("الحساب",style: TextStyle(fontSize: 13, color: Color(0xffbdbdbd)),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("image/bill.png", height: 35, width: 35,),
                Text("الطلبات",style: TextStyle(fontSize: 13, color: Color(0xffbdbdbd)),)

              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.account_balance_wallet_outlined, color:  Color(0xfff6323e), size: 37,),
                Text("المحفظة",style: TextStyle(fontSize: 13, color: Colors.black),)
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_outlined, color: Color(0xffbdbdbd), size: 37,),
                Text("الرئيسية",style: TextStyle(fontSize: 13, color:Color(0xffbdbdbd) ),)
              ],
            )



          ],
        ),
      )
      ,


    );
  }

  fsm(){
    double s;
    if(
    MediaQuery.of(context).size.width<700
    ){
      s=23;
    }
    else if(MediaQuery.of(context).size.width>700) {
      s=37;
    }
    else{
      s=27;
    }
    return s;
  } //Titles size

  fsn(){
    double s;
    if(
    MediaQuery.of(context).size.width<700
    ){
      s=21;
    }
    else if(MediaQuery.of(context).size.width>800) {
      s=30;
    }
    else{
      s=20;
    }
    return s;
  } //Name size

  fs(){
    double s;
    if(
    MediaQuery.of(context).size.width<700
    ){
      s=11;
    }
    else if(MediaQuery.of(context).size.width>700) {
      s=27;
    }
    else{
      s=15;
    }
    return s;
  } //others font size

  Is(){
    double s;
    if(
    MediaQuery.of(context).size.width<700
    ){
      s=20;
    }
    else if(MediaQuery.of(context).size.width>700) {
      s=39;
    }
    else{
      s=30;
    }
    return s;
  }

}
