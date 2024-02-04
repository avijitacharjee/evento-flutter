import 'package:evento/utils/colors.dart';
import 'package:flutter/material.dart';

class OrderConfirmationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          color: UtilColors.backgroundDark,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 0,),
              Text(
                "Order Confirmation",
                style: TextStyle(color: Colors.white70,fontSize: 24),
              ),
              Divider(color: Colors.white38,height: 10,),
              SizedBox(height: 10,),
              Card(
                color: UtilColors.cardColor,
                margin: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(
                        "Attendee Information",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("First Name"),
                          hintText: "First Name",
                          hintStyle: TextStyle(
                            color: Colors.white60
                          ),
                          labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Last Name"),
                            hintText: "Last Name",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Email"),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Address"),
                            hintText: "Address",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Country"),
                            hintText: "Country",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("State"),
                            hintText: "State",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("City"),
                            hintText: "City",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Zip Code"),
                            hintText: "Zip Code",
                            hintStyle: TextStyle(
                                color: Colors.white60
                            ),
                            labelStyle: TextStyle(color: Colors.white60)
                          // fillColor: UtilColors.inputFieldColor
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Total Amount: \$100",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        color: Color(0xff6ac045),
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        child: Center(
                          child: Text(
                            "Confirm and Pay",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}