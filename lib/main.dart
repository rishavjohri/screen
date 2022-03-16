import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: true,
      left: true,
      right: true,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Device'),
        //   backgroundColor: Colors.indigo[800],
        // ),
        body: Container(
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(50.0),
              topRight: const Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 50, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selected device',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'assets/images/close.png',
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.white10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    // width: double.infinity,
                    // height: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nfc.png',
                              width: 100,
                              height: 100,
                            ),
                            Text('Initiate NFC'),
                            Text('connection'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // width: 170,
                    // height: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.grey,
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/qr.png',
                              width: 100,
                              height: 100,
                            ),
                            Text('Scan the device'),
                            Text('QR code'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Card(
                      child: ListTile(
                    title: Text("List Item 1"),
                  )),
                  Card(
                    child: ListTile(
                      title: Text("List Item 2"),
                    ),
                  ),
                  Card(
                      child: ListTile(
                    title: Text("List Item 3"),
                  )),
                  Card(
                      child: ListTile(
                    title: Text("List Item 3"),
                  )),
                ],
                shrinkWrap: true,
                reverse: true,
                padding: EdgeInsets.all(10),
                itemExtent: 100,
                scrollDirection: Axis.vertical,
              )
            ],
          ),
        ),
      ),
    );
  }
}
