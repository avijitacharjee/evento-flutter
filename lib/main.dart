import 'package:evento/pages/eventSingle.dart';
import 'package:evento/pages/eventsPage.dart';
import 'package:evento/pages/homePage.dart';
import 'package:evento/pages/orderConfirmationPage.dart';
import 'package:evento/pages/thanksPage.dart';
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
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [const Home(),Events(),EventSingle(),OrderConfirmationPage(),ThanksPage()];
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context);
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
                  onItemTapped(2);
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  onItemTapped(3);
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                setState(() {
                  onItemTapped(4);
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
