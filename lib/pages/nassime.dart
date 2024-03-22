// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: Colors.white,
                child: 
                        SizedBox(
                          height: 20,
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
                          
                          height: 17,
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
                          height: 15,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(" Already have an account ? "),
                            GestureDetector (
                              onTap: (){ Navigator.pushNamed(context, "/signup");},
                              child: Text(" Sign in ",style: TextStyle(fontWeight: FontWeight.bold),
                              )
                             
                              )
                          ],
                        ),
                      
                      

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
                  ),
  }
}
