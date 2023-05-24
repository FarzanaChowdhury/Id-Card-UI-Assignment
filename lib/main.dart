import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Define the default text theme with a specific font size
    final textTheme = Theme.of(context).textTheme.copyWith(
      bodyText1: TextStyle(fontSize: 16.0), // Set the desired font size
      // Add more text styles as needed
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: textTheme, // Apply the custom text theme


        primarySwatch: Colors.blueGrey,
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

                  color: Color.fromRGBO( 6,107,84,1),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 15),

                  child: Column(

                    children: [
                      Image.asset('assets/images/IUT_Logo.png', width : 90, height: 90),
                      const Text('ISLAMIC UNIVERSITY OF TECHNOLOGY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 70)
                    ],


                  ),
                ),
                Positioned(
                  bottom : -70,
                  child: Container(
                  height: 140.0,
                  width: 140.0,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 40),

                  decoration: BoxDecoration(
                    border: Border.all(
                     // color: const Color(0x07a556),
                      color: Color.fromRGBO( 6,107,84,1),
                      width: 10,

                    ),
                    image: const DecorationImage(
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

            const Padding(
                padding: EdgeInsets.all(10)),

               Row(

                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     alignment: Alignment.center,
                     padding: EdgeInsets.symmetric(vertical: 80, horizontal: 0),
                     // decoration: BoxDecoration(
                     //   border: Border.all(
                     //     // color: const Color(0x07a556),
                     //     color: Colors.green,
                     //     width: 10,
                     //   ),
                     // ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children : const [
                           Icon(Icons.vpn_key),
                           Text(' Student ID'),
                         ]
                     ),

                   const Padding(
                       padding: EdgeInsets.all(3)),


                   Row(
                     children: [

                       Container(
                         padding: EdgeInsets.only(right: 25, left: 3),
                         decoration: const BoxDecoration(
                             color: Color.fromRGBO( 6,107,84,1),
                             shape: BoxShape.rectangle,
                             border: Border(
                             ),
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: Row(
                           children: const [Icon(Icons.circle,
                             color: Colors.blue,
                           ),
                             Text('190041114', style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.white,
                             ),),
                           ],
                         ),

                       ),
                     ],
                   ),

                       const Padding(
                           padding: EdgeInsets.all(3)),

                   Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children : const [
                         Icon(Icons.account_circle
                         ),
                         Text(' Student Name'),
                       ]
                   ),

                       const Padding(
                           padding: EdgeInsets.all(3)),

                   const Text('FARZANA CHOWDHURY',
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 15.0,
                     ),
                   ),

                       const Padding(
                           padding: EdgeInsets.all(3)),

                   Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children : const [
                         Icon(Icons.school),
                         Text(' Program BSc in CSE'),
                       ]
                   ),

                       const Padding(
                           padding: EdgeInsets.all(3)),


                   Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children : const [
                         Icon(Icons.supervised_user_circle
                         ),
                         Text(' Department CSE'),
                       ]
                   ),

                       const Padding(
                           padding: EdgeInsets.all(3)),


                   Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children : const [
                         Icon(Icons.pin_drop
                         ),
                         Text(' Bangladesh',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                           ),),
                       ]
                   ),
                   ]),
                   ),
                 ],
               ),




          const Spacer(),
          Container(
            color: Color.fromRGBO( 6,107,84,1),
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 8, bottom: 2),
            //height: 10,
            child : Column(
                children: const <Widget>[
          Text('A subsidiary organ of OIC', style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),),
            ]
            ),
          )

          ],


        ),


      ),


    );
  }
}
