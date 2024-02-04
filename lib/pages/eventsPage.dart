import 'package:flutter/material.dart';

class Events extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: const Color(0xff111315),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xff272a2f),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Discover Events for all the things you love",
                    style: TextStyle(color: Colors.white,fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Text("Featured Events",textAlign: TextAlign.start,style: TextStyle(color: Colors.white38),),
              ),
              Column(
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
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "   BDT 200",
                            style: TextStyle(color: Colors.white60, fontSize: 16),
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
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "   BDT 200",
                            style: TextStyle(color: Colors.white60, fontSize: 16),
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
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            child: Image.network(
                                "https://fastly.picsum.photos/id/195/640/360.jpg?hmac=OYBzVUKVbPiHulCq_7wGwdGPr3aJUMTyFi019ptgWzQ"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "   PUC Convocation",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "   BDT 200",
                            style: TextStyle(color: Colors.white60, fontSize: 16),
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
                              "https://fastly.picsum.photos/id/195/640/360.jpg?hmac=OYBzVUKVbPiHulCq_7wGwdGPr3aJUMTyFi019ptgWzQ"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "   PUC Convocation",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "   BDT 200",
                            style: TextStyle(color: Colors.white60, fontSize: 16),
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
              )
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }

}