import 'package:flutter/material.dart';

import 'login.dart';


class MyRegisterPage extends StatefulWidget {
  @override
  State<MyRegisterPage> createState() => _MyRegisterPage();
}

class _MyRegisterPage  extends State<MyRegisterPage > {


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
                      padding: const EdgeInsets.only(left:60,top: 40, right: 60, bottom: 10),
                      child: Image.asset("images/pikachu.png")
                  ),
                  SizedBox(height: 2,),
                  Text("Register", style:TextStyle(fontSize: 30, color: Colors.white),),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 50,
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
                          Center(child: Text("Username", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          prefixIcon: Icon(Icons.email, size: 35,),
                          filled: true,
                          fillColor: Color(0xffe2681A2),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          label:
                          Center(
                              child: Text(
                                "Email", style:
                              TextStyle(fontWeight: FontWeight.normal, fontSize: 20),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 50,
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
                          Center(child: Text("Password", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white),

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
                          Center(child: Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),)),
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(width: 1.0, color: Colors.black,),
                      backgroundColor: Color(0xffe183959),
                      padding: EdgeInsets.symmetric(horizontal: 110, vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),

                    child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 25),),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyLoginPage()));
                    },
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Row(
                      children: [
                        Text("Already have an accont?", style: TextStyle(color: Colors.white, fontSize: 16),),
                        SizedBox(width: 35,),
                        GestureDetector(child:
                        Text("Login", style: TextStyle(color: Colors.white, fontSize: 16,decoration: TextDecoration.underline,decorationThickness: 1.5,  ),),
                          onTap: (){ Navigator.of(context).push(
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
                          );},
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
