import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: const Color(0xff111315),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsetsDirectional.all(20),
                height: 300,
                color: const Color(0xff272a2f),
                child: Column(
                  children: [
                    const Text(
                      "The Easiest And Most Powerful Online Event Booking and Ticketing System.",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Evento is an all-in-one event ticketing platform for event organizers, promoters, and managers. Easily create,promote and manage your events of any type and size",
                      style: TextStyle(color: Colors.white60, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      color: const Color(0xff6ac045),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create Event",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Explore Events",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Column(
                children: [
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
  }
}
