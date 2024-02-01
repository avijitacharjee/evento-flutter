import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
          child: MyHomePage(title: 'Evento')
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  static const optionStyle = TextStyle(fontSize: 20,color: Colors.black);
  static final List<Widget> _widgetOptions = [Home(),Bar()];
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedPage = '';
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.black,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: const Color(0xff1a1d1f),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/evento.png'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Avijit Acharjee',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    const Text(
                      'avijitach@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Events'),
              onTap: () {
                onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.feed),
              title: const Text('Blog'),
              onTap: () {
                setState(() {
                  selectedPage = 'Messages';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  selectedPage = 'Profile';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  selectedPage = 'Settings';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share"),
            ),
            const Divider(
              height: 1,
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: const Text('Log out'),
            )
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex]

    );
  }
}
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
/*class Foo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      primary: true,
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(title: new Text('foo')),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.space_bar),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (_) => new Bar(),
          ));
        },
      ),
    );
  }
}*/

class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      primary: true,
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(title: new Text('bar')),
    );
  }

}
