import 'dart:math';

import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

// DICEE
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  // int rand=random.nextInt(6);
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: "",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dicee"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftNumber = random.nextInt(6) + 1; // 1 to 6
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$leftNumber.png"),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightNumber = random.nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$rightNumber.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// BOSS LEVEL CHANLLENGES

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int imgchange = 1;
//   Random random = Random();
//   void changeImage() {
//     setState(() {
//       imgchange = random.nextInt(5) + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Ask me Anything"),
//         ),
//         body: Center(
//           child: Container(
//             child: FlatButton(
//               onPressed: changeImage,
//               child: Image.asset("images1/ball$imgchange.png"),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
