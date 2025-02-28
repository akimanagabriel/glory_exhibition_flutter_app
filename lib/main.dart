import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
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
      ),
    );
  }
}
