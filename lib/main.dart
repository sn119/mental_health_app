import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  @override
  /*Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  } */
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'khgkgiugiu.iugiu'),
        '/nextPage': (context) => NextPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _feeling = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 201, 220), // Change the background color here
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print('button pressed!');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage()),
                  );
                },

                child: Text('Next'),

              ),
              RichText(
                text: TextSpan(
                  text: 'How are you feeling today? \n ', 
                  //text: '      ',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 50, color: Color.fromARGB(255, 58, 75, 86)),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _feeling = '😁';
                          });
                        },
                        child: Text('          😁', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 247, 0))),
                      ),
                    ),                  
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _feeling = '😊';
                          });
                        },
                        child: Text('😊', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 247, 0))),
                      ),
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _feeling = '😢';
                          });
                        },
                        child: Text('😢', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 247, 0))),
                      ),
                    ),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _feeling = '😭';
                          });
                        },
                        child: Text('😭', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 247, 0))),
                      ),
                    ),

                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _feeling = '😡';
                          });
                        },
                        child: Text('😡', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 247, 0))),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'You are feeling: $_feeling',
                style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 127, 128, 128)),
              ),
//              Text(
//                'You pressed the button $_counter times.',
//                style: Theme.of(context).textTheme.headlineMedium,
//              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is the Next Page'),
          ],
        ),
      ),
    );
  }
}

