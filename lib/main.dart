import 'package:flutter/material.dart';
import 'package:glory/components/contact_form.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 0;

  List<Widget> Screens = [
    Text("Home screen"),
    Text("Trades screen"),
    Text("About us screen"),
    ContactForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screens[currentIndex],

        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "GLORY ACADEMY",
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            height: 4,
            width: 4,
            child: Image.asset("asset/logo.png"),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.settings),
            ),
            // SizedBox(
            //   width: 15,
            // )
          ],
        ),
// bottom navigation bar
// trades
// info
// contact
        bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.book_outlined),
              label: "Trades",
            ),
            NavigationDestination(
              icon: Icon(Icons.info_outlined),
              label: "About us",
            ),
            NavigationDestination(
              icon: Icon(Icons.phone_in_talk_outlined),
              label: "Contact Us",
            ),
          ],
        ),
      ),
    );
  }
}
