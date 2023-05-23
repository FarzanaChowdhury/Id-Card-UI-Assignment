import 'package:flutter/material.dart';

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
        primarySwatch: Colors.green,
      ),

      home: const MyHomePage(title: 'ID Card'),
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


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[


            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(

                  color: Colors.green,
                  width: MediaQuery.of(context).size.width,
                  child: Column(

                    children: [
                      Image.asset('assets/images/IUT_Logo.png', width : 100, height: 100),
                      const Text('ISLAMIC UNIVERSITY OF TECHNOLOGY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 70)
                    ],


                  ),
                ),
                Positioned(
                  bottom : -60,
                  child: Container(
                  height: 120.0,
                  width: 120.0,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/profile.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  ),

                ),
      ),
              ],
            ),


            // Container(
            //   height: 120.0,
            //   width: 120.0,
            //   decoration: const BoxDecoration(
            //
            //     image: DecorationImage(
            //       image: AssetImage(
            //           'assets/images/profile.png'),
            //       fit: BoxFit.fill,
            //     ),
            //     shape: BoxShape.rectangle,
            //   ),
            // ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children : const [
                Icon(Icons.vpn_key),
              Text(' Student ID'),
              ]
              ),

              Container(
                  decoration: const BoxDecoration(
                  color: Colors.green,
                    border: Border(
                    )
                  ),
                child: const Text('190041114'),
              ),


            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children : const [
                  Icon(Icons.account_circle
                  ),
                  Text(' Student Name'),
                ]
            ),

            const Text('FARZANA CHOWDHURY',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children : const [
  Icon(Icons.school),
    Text(' Program BSc in CSE'),
  ]
),


            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children : const [
                  Icon(Icons.supervised_user_circle
                  ),
                  Text(' Department CSE'),
                ]
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children : const [
                  Icon(Icons.pin_drop
                  ),
                  Text(' Bangladesh',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                ]
            ),

           //Text
          ],
        ),
      ),

    );
  }
}
