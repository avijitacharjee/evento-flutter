import 'package:evento/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: UtilColors.backgroundDark,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          height: 600,
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/images/evento-inverse.svg",
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sign in to Evento",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Email*",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: UtilColors.inputFieldColorWhite,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password*",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(children: <Widget>[
                Expanded(
                    child: Divider(
                  color: Colors.white60,
                )),
                Text(
                  "  OR  ",
                  style: TextStyle(color: Colors.white60),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.white60,
                )),
              ]),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Evento? ",style: TextStyle(color: Colors.white54,fontSize: 15),
                  ),
                  Text("Sign up.",style: TextStyle(color: UtilColors.primary,fontSize: 15),)
                ],
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
