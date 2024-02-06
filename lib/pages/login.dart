import 'dart:convert';

import 'package:evento/main.dart';
import 'package:evento/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class Login extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> login(String email, String password, context) async {
    print(email);
    final response = await http.post(
        Uri.parse("http://192.168.0.6/api/sign-in"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{'email': email, 'password': password})
    );
    final jsonResponse = jsonDecode(response.body);
    if(jsonResponse['success']){
      // Navigator.push(context, MyHomePage(title: "Evento") as Route<Object?>);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "Evento")));
    }else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(jsonResponse['message'])
        )
      );
    }
    final jsonData = jsonResponse['data']['name'];
    print(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            color: UtilColors.backgroundDark,
            child: Container(
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
                            controller: emailController,
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
                            controller: passwordController,
                          ),
                          SizedBox(height: 20),
                          Builder(
                            builder: (context) {
                              return InkWell(
                                onTap: () {
                                  login(emailController.text,
                                      passwordController.text, context);
                                },
                                child: Container(
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
                                ),
                              );
                            }
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New to Evento? ",
                            style:
                                TextStyle(color: Colors.white54, fontSize: 15),
                          ),
                          Text(
                            "Sign up.",
                            style: TextStyle(
                                color: UtilColors.primary, fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
