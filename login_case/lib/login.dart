import 'package:flutter/material.dart';
import 'package:login_case/empty.dart';
import 'package:login_case/register.dart';

import 'main.dart';


class MyLoginPage extends StatefulWidget {
  @override
  State<MyLoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoginPage> {


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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left:60,top: 80, right: 60, bottom: 10),
                      child: Image.asset("images/mario.png")
                  ),
                  SizedBox(height: 20,),
                  Text("Welcome Back", style:TextStyle(fontSize: 30, color: Colors.white),),
                  SizedBox(height: 20,),
                  Text("Login to Your Accont", style:TextStyle(fontSize: 20, color: Colors.white),),
                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 55,
                      child: TextField(
                        
                        style: TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          prefixIcon: Icon(Icons.account_circle, size: 35,),
                          filled: true,
                          fillColor: Color(0xffe2681A2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label:
                              Center(child: Text("Username", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 55,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          prefixIcon: Icon(Icons.lock, size: 35,),
                          filled: true,
                          fillColor: Color(0xffe2681A2),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label:
                          Center(
                              child: Text(
                                "Password", style:
                              TextStyle(fontWeight: FontWeight.normal, fontSize: 22),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Theme(
                          child: Checkbox(
                            value: false,
                            onChanged: (_) {},
                          ),
                          data: ThemeData(
                            unselectedWidgetColor: Colors.white,
                            backgroundColor: Colors.white
                          ),
                        ),
                        Text("Remember Me", style: TextStyle(color: Colors.white, fontSize: 16),),
                        SizedBox(width: 45,),
                        Text("Forgot Password?", style: TextStyle(color: Colors.white, fontSize: 14),),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
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
                            return Empty();
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
                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 80),
                     child: Row(
                       children: [
                         Text("Don't have an accont?", style: TextStyle(color: Colors.white, fontSize: 16),),
                         SizedBox(width: 20,),
                         GestureDetector(child:
                         Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16,decoration: TextDecoration.underline,decorationThickness: 1.5,  ),),
                         onTap: (){


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
                     ),
                   ),









                ],

              ),
            )
        ),
      ),
    );
  }
}
