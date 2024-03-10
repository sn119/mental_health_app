import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Page Example',
      home: FinalPage(),
    );
  }
}

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Final Page'),
      ),
      backgroundColor: Color.fromARGB(255, 130, 169, 187),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Are you feeling better?',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
              Text(
                'We genuinely hope these activities have helped you relax.',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blueGrey,
                ),
              ),
              Text(
                'This app is always there to help with your anxiety whenever and wherever you may need it.',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                ),
              ),
            ]
        )
      ),
    );
  }
}
