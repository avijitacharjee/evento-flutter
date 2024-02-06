import 'dart:convert';

import 'package:evento/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: UtilColors.backgroundDark,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color(0xff272a2f),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "Discover Events for all the things you love",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Text(
                      "Featured Events",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  Container(child: const EventListWidget()),
                  /*Column(
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        color: Color(0xff1a1d1f),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                  "https://fastly.picsum.photos/id/195/640/360.jpg?hmac=OYBzVUKVbPiHulCq_7wGwdGPr3aJUMTyFi019ptgWzQ"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   PUC Convocation",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "   BDT 200",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16),
                              ),
                              // Container(
                              //   // color: Color.fromRGBO(106, 192, 69, 3),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Icon(Icons.calendar_today,color: Colors.white60,),
                              //       Text("12 Sep")
                              //     ],
                              //   ),
                              // )
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(20),
                        color: Color(0xff1a1d1f),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                  "https://fastly.picsum.photos/id/678/640/360.jpg?hmac=DVM3Z2BtIVOUL6Y3oPKrk9ev7B1tHTYEb5xYRhlGAJU"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   PUC Convocation",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "   BDT 200",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16),
                              ),
                              // Container(
                              //   // color: Color.fromRGBO(106, 192, 69, 3),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Icon(Icons.calendar_today,color: Colors.white60,),
                              //       Text("12 Sep")
                              //     ],
                              //   ),
                              // )
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(20),
                        color: Color(0xff1a1d1f),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.network(
                                    "https://fastly.picsum.photos/id/195/640/360.jpg?hmac=OYBzVUKVbPiHulCq_7wGwdGPr3aJUMTyFi019ptgWzQ"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   PUC Convocation",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "   BDT 200",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16),
                              ),
                              // Container(
                              //   // color: Color.fromRGBO(106, 192, 69, 3),
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Icon(Icons.calendar_today,color: Colors.white60,),
                              //       Text("12 Sep")
                              //     ],
                              //   ),
                              // )
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  )*/
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class EventListWidget extends StatefulWidget {
  const EventListWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return EventListState();
  }
}

class EventListState extends State<EventListWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.all(20),
                    color: Color(0xff1a1d1f),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("${snapshot.data?[index].image}"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${snapshot.data?[index].name}",
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${snapshot.data?[index].price}",
                            style: TextStyle(
                                color: Colors.white60, fontSize: 16),
                          ),
                          // Container(
                          //   // color: Color.fromRGBO(106, 192, 69, 3),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: [
                          //       Icon(Icons.calendar_today,color: Colors.white60,),
                          //       Text("12 Sep")
                          //     ],
                          //   ),
                          // )
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Text(
              snapshot.error.toString(),
              style: TextStyle(color: Colors.white, fontSize: 20),
            );
          }
          return const CircularProgressIndicator();
        });
  }
}

class Event {
  late int? id;
  late String? name;
  late String? image;
  late String? price;
  Event(
      {required this.id,
      required this.name,
      required this.image,
      required this.price});

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      price: "${json['ticket_price']}",
    );
  }
}

class Response<T> {
  late List<T> data;
  late bool success;
  late String message;
}

Future<List<Event>> fetchData() async {
  var url = Uri.parse("http://192.168.0.6/api/event");
  final response = await http.get(url);
  var responseJson = jsonDecode(response.body);
  print(responseJson['data'][0]['name']);
  List<Event> list =
      responseJson['data'].map<Event>((data) => Event.fromJson(data)).toList();
  print(list.length);
  return list;
}
