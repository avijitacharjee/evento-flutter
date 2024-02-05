import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class EventSingle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xff111315),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "PUC Convocation",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on,color: Colors.white70,),
                      Text(
                          "Starts on Thu, Sep 12,2024 01.27am - 2h",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  Image.network("https://fastly.picsum.photos/id/195/640/360.jpg?hmac=OYBzVUKVbPiHulCq_7wGwdGPr3aJUMTyFi019ptgWzQ"),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Color(0xff272a2f),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(Icons.bookmark_border_outlined,color: Colors.white70,),
                            SizedBox(width: 5,),
                            Text(
                            "Save",
                              style: TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
                          ),]
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        color: Color(0xff272a2f),
                        padding: EdgeInsets.all(10),
                        child: Row(
                            children: [
                              Icon(Icons.share_outlined,color: Colors.white70,),
                              SizedBox(width: 5,),
                              Text(
                                "Share",
                                style: TextStyle(color: Colors.white70,fontSize: 18,fontWeight: FontWeight.bold),
                              ),]
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  const Text(
                      "About this event",
                    style: TextStyle(color: Colors.white70,fontSize: 20),
                  ),
                  const Text("""Perferendis aut veniam quia sapiente odio. Ipsum temporibus qui odit cupiditate enim excepturi. Amet repellat eligendi esse suscipit sapiente rerum corporis. Est asperiores at non corporis ut.""",
                      style: TextStyle(color: Colors.white60,fontSize: 16)),
                  SizedBox(height: 20,),
                  Container(
                    color: Color(0xff272a2f),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event Details",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18
                          ),
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.white54),
                        SizedBox(height: 10,),
                        /*const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter number of persons"
                          ),
                        ),*/
                        Row(
                          children: [
                            Container(
                              color: UtilColors.primary,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("235",style: TextStyle(color: Colors.white,fontSize: 25),),
                                      Text("Days",style: TextStyle(color: Colors.white,fontSize: 14))
                                    ],
                                  ),
                                ),
                              ),
                            ),Spacer(),
                            Container(
                              color: UtilColors.primary,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("10",style: TextStyle(color: Colors.white,fontSize: 25),),
                                      Text("Hours",style: TextStyle(color: Colors.white,fontSize: 14))
                                    ],
                                  ),
                                ),
                              ),
                            ),Spacer(),
                            Container(
                              color: UtilColors.primary,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("20",style: TextStyle(color: Colors.white,fontSize: 25),),
                                      Text("Minutes",style: TextStyle(color: Colors.white,fontSize: 14))
                                    ],
                                  ),
                                ),
                              ),
                            ),Spacer(),
                            Container(
                              color: UtilColors.primary,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
                                  child: Column(
                                    children: [
                                      Text("235",style: TextStyle(color: Colors.white,fontSize: 25),),
                                      Text("Seconds",style: TextStyle(color: Colors.white,fontSize: 14))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.person_rounded,color: Colors.white60,),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Text(
                                  "Organized by",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Avijit Acharjee",
                                  style: TextStyle(color: Colors.white60),
                                ),
                              ],
                            )
                          ],
                        ),

                        SizedBox(height: 20,),
                        Container(
                          color: Color(0xff6ac045),
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          child: Center(
                            child: Text(
                              "Book now",
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

                ],
              ),
            ),
          ),
        )
    );
  }
}