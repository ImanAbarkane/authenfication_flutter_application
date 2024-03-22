import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          color: Colors.white,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              SizedBox(
               
                width: double.infinity,
                height: double.infinity,
                child: Column(children: [
                  const SizedBox(  // espace entre tele et welcome
                    width: 22,
                    height: 60,
                  ),
                  const Text(
                    "welcome ",
                    style: TextStyle(
                      fontSize: 33,
                      fontStyle: FontStyle.italic 
                    ),
                  ),
                  const SizedBox(
                    width: 22,
                    height: 60,
                  ),
                       
                   SvgPicture.asset("icons/chat.svg"),

                  const SizedBox(
                    width:10,
                    height: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 95, 30, 207)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27)))),
                    child: const Text("LOGIN",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 235, 223, 223),
                        )),
                  ),
                  const SizedBox(
                    width: 22,
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.deepPurple[100]),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27)))),
                    child: Text("SIGNUP",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[850],
                        )),
                  ),
                ]),
              ),
              Positioned(
                  child: Image.asset(
                'images/main_top.png',
                width: 110,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                // top: 50,
                //right: 0,
                child: Image.asset(
                  'images/main_bottom.png',
                  width: 100,
                ),
              ),
                        ]
                        ),

    )
    )
     )
     );
  }
}