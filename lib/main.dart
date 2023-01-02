import 'package:flutter/material.dart';

import 'circular_outer_notch.dart';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TOTAL BALANCE'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFF1C1C1E),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: AppBar(
              leading: Icon(
                Icons.menu,
                color: Colors.white,
                size: 24,
              ),
              centerTitle: true,
              backgroundColor: Color(0xFF26262A),
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.
              title: Column(
                children: [
                  Text(widget.title,
                      style: TextStyle(fontSize: 12, color: Color(0xFF7E7D81))),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text("\$278,456.56", style: TextStyle(fontSize: 25)),
                ],
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
                    child: CircleAvatar(
                      radius: 14.0,
                      backgroundImage: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/c/c0/Official_Photograph_of_Prime_Minister_Narendra_Modi_Potrait.png"),
                    ),
                    width: 50.0,
                    height: 50.0,
                    padding: EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF515156),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ]),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(children: [
                  const Text('My wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: 'Massiva Grotesq Light')),
                  Spacer(),
                  Icon(
                    Icons.add_circle_outline,
                    color: Color(0xFF9D9C9E),
                    size: 20,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  const Text('Edit',
                      style: TextStyle(color: Color(0xFF9D9C9E), fontSize: 16)),
                ]),
              ),
            ),
            CryptoCard(
                icon: "assets/ethereum.png",
                name: "ETH",
                value: "345.567",
                total: "\$345,234.67"),
            CryptoCard(
                icon: "assets/bitcoin.png",
                name: "BTC",
                value: "34.34",
                total: "\$345,234.67"),
            CryptoCard(
                icon: "assets/dai.png",
                name: "DAI",
                value: "43.567",
                total: "\$345,234.67"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xFF1C61E7),
        child: Image.asset('assets/sort.png',
            alignment: Alignment.centerLeft,
            width: 20,
            height: 20,
            color: Colors.white),
        elevation: 4.0,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                top: BorderSide(
                    color: Color(0xFF1C61E7),
                    style: BorderStyle.solid,
                    width: 3.0))),
        child: BottomAppBar(
          color: Color(0xFF26262A),
          shape: CircularOuterNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  onPressed: null,
                  icon: Image.asset(
                    'assets/home.png',
                    alignment: Alignment.centerLeft,
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                    onPressed: null,
                    icon: Image.asset('assets/radar.png',
                        alignment: Alignment.centerLeft,
                        width: 20,
                        height: 20,
                        color: Colors.white)),
              ),
              Expanded(child: Text('')),
              Expanded(
                child: IconButton(
                    onPressed: null,
                    icon: Image.asset('assets/scan.png',
                        alignment: Alignment.centerLeft,
                        width: 20,
                        height: 20,
                        color: Colors.white)),
              ),
              Expanded(
                child: IconButton(
                    onPressed: null,
                    icon: Image.asset(
                      'assets/nut.png',
                      alignment: Alignment.centerLeft,
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CryptoCard extends StatelessWidget {
  final String icon;
  final String name;
  final String value;
  final String total;

  const CryptoCard({
    Key? key,
    required this.icon,
    required this.name,
    required this.value,
    required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF26262A),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          horizontalTitleGap: 0.0,
          leading: Image.asset(icon,
              alignment: Alignment.centerLeft, width: 30, height: 30),
          title: Text(name,
              style: TextStyle(
                  color: Color(0xFFA8A8AC),
                  fontSize: 13,
                  fontWeight: FontWeight.w600)),
          subtitle: Text(value,
              style: TextStyle(color: Color(0xFF605F64), fontSize: 13)),
          trailing: Text(total,
              style: TextStyle(
                  color: Color(0xFFA3A3A4),
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
          dense: true,
        ),
      ),
    );
  }
}
