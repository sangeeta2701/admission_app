import 'package:admission/signup.dart';
import 'package:lottie/lottie.dart';
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/67934-studyly.json"),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child: Text(
              "Let's Go",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
    // return Container(
    //   // constraints: BoxConstraints.expand(),
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("assets/img2.jpg"),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: Center(
    //     child: Positioned(
    //       top: 40.0,
    //       child: ButtonTheme(
    //         height: 10,
    //         minWidth: 20,
    //         child: RaisedButton(
    //           color: Colors.black,
    //           child: Text(
    //             "Let's go",
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 25,
    //                 color: Colors.white),
    //           ),
    //           onPressed: () {
    //             Navigator.push(context,
    //                 MaterialPageRoute(builder: (context) => SignUpScreen()));
    //           },
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
