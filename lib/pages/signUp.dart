import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/colors.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: UtilColors.backgroundDark,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          height: screenHeight-150,
          child: Column(
            children: [
              SvgPicture.asset("assets/images/evento-inverse.svg",width: 200,),
              SizedBox(height: 20,),
              Text(
                "Sign up to Evento",
                style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name*",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: UtilColors.inputFieldColorWhite,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Email*",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: UtilColors.inputFieldColorWhite,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Phone*",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: UtilColors.inputFieldColorWhite,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Password*",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: UtilColors.inputFieldColorWhite,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(height: 20),
                  Container(
                    color: Color(0xff6ac045),
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: Center(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}