
import 'package:flutter/material.dart';
import 'package:login_case/register.dart';

import 'login.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.6, 0.8),
            colors: <Color>[
              Color(0xffe2681A2),
              Color(0xfff020709),
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child:  Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left:70,top: 80, right: 70, bottom: 10),
                    child: Image.asset("images/sonic-png-10.png")
                ),
                SizedBox(height: 20,),
                Text("EisGame", style:TextStyle(fontSize: 40, color: Colors.white),),
                SizedBox(height: 20,),
                Text("The Only Address of Quality", style:TextStyle(fontSize: 20, color: Colors.white),),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.black,),
                    backgroundColor: Color(0xffe2681A2),
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),

                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 25),),
                  onPressed: (){
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 1000),
                        pageBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return MyLoginPage();
                        },
                        transitionsBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return Align(
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Colors.black,),
                    backgroundColor: Color(0xffe183959),
                    padding: EdgeInsets.symmetric(horizontal: 108, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 25),),
                  onPressed: (){

                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 1000),
                        pageBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return MyRegisterPage();
                        },
                        transitionsBuilder: (
                            BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation,
                            Widget child) {
                          return Align(
                            child: FadeTransition(
                              opacity: animation,
                              child: child,
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),

              ],

            )
        ),
      ),
    );
  }
}