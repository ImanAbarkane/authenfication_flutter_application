// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: Colors.white,
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Column(children: [
                        const SizedBox(
                          // espace entre tele et welcome
                          width: 22,
                          height: 30,
                        ),
                        const Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 30, fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          width: 22,
                          height: 20,
                        ),
                        SvgPicture.asset("icons/signup.svg"),
                        const SizedBox(
                          height: 33,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)
                          ),
                          width: 266,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Email: ",
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(66)
                          ),
                          width: 266,
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.visibility,
                                color: Colors.purple[900],
                              ),
                              icon: Icon(
                                Icons.lock,
                                color: Colors.purple[800],
                                size: 19,
                              ),
                              hintText: "Password : ",
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(
                          
                          height: 16,
                         ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text("LOGIN",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(255, 235, 223, 223),
                              )),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.deepPurple),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 13)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(27)))),
                        ),
                        const SizedBox(
                          width: 22,
                          height: 20,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(" Already have an account ? "),
                            GestureDetector(
                               onTap: (){ Navigator.pushNamed(context, "/login");},
                              child: Text(" log in ",style: TextStyle(fontWeight: FontWeight.bold),))
                          ],
                        ),
                        const SizedBox(
                          width: 22,
                          height: 9,
                        ),
                        SizedBox(
                          width: 299,
                          child: Row(
                            children: [
                             const Expanded(child: Divider(height: 9 ,thickness: 1,color: Colors.black,)) ,
                             Text("OR",style: TextStyle(color: Colors.purple[900]),),
                             const Expanded(child: Divider(height: 9 ,thickness: 1,color: Colors.black,)) ,
                            ],
                          ),
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 44),
                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.center ,
                            children: [
                              Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color.fromARGB(255, 44, 2, 231),width: 1)
                                 ),
                                 child :SvgPicture.asset("icons/facebook.svg",height: 18,width: 20,color: Colors.deepPurple[900]),
                                
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color:Color.fromARGB(255, 44, 2, 231),width: 1)
                                 ),
                                 child :SvgPicture.asset("icons/google-plus.svg",height: 18,width: 20,color: Colors.deepPurple[900]),
                              ),
                              SizedBox(
                                
                                width:30,
                              ),
                              Container(padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color.fromARGB(255, 44, 2, 231),width: 1)
                                 ),
                                 child :SvgPicture.asset("icons/twitter.svg",height: 18,width: 20,color: Colors.deepPurple[900],),),
                              

                            ]
                          ),
                        ),
                        
                       

                      ] ,
                      

                    ),
                      ),
                    
                   
                    Positioned(
                        child: Image.asset(
                      'images/main_top.png',
                      width: 110,
                    )),
                    Positioned(
                      bottom: 0,
                      
                      right: 0,
                      child: Image.asset(
                        'images/login_bottom.png',
                        width: 100,
                      ),
                    ),
                  ]),
                )))

    );
  }
}