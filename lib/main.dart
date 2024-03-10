import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

<<<<<<< HEAD
class MyJournalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyJournalScreen(),
    );
  }
}

class MyJournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('My Journal'),
      ),
      body: JournalPage(),
    );
  }
}

class JournalPage extends StatefulWidget{
  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage>{
  TextEditingController _answerController = TextEditingController();
  TextEditingController _answerController2 = TextEditingController();
  String _question = "What's on your mind today?";
  String _question2 = "What's something new you learned/discovered today?";

  @override 
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/journal.png'),
          fit: BoxFit.cover,

        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _buildJournalContent(),
      ),
    );
  }

  Widget _buildJournalContent(){
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _question,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _answerController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your answer here...',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                _question2,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _answerController,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type your answer here...',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  print('User Answer 1: ${_answerController.text}');
                  print('User Answer 1: ${_answerController2.text}');

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose(){
    _answerController.dispose();
    _answerController2.dispose();
    super.dispose();
  }
}

class WelcomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text("Are you ready for your relaxing journey!"),
      ),
    );
  }
}


/*
class WelcomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Are you ready for your relaxing journey!!'),
      ),
      body: IntroPage(),
    );
  }
}

class IntroPage extends StatefulWidget{
  @override 
  _WelcomePageState createState() => _WelcomePageState();
} 

class _WelcomePageState extends State<IntroPage>{
  @override 
  Widget build(BuildContext context){
    return Container(
      Child: [
        Text(
          decoration: InputDecoration(
          hintText: 'Are you ready for your relaxing journey!!',
          
        ),
        )
      ],
    );
  }
}






/*class MyApp extends StatelessWidget {
  const MyApp({super.key});
=======
class MyApp extends StatelessWidget {
  //const MyApp({super.key});
>>>>>>> 89bb3152b9f8f4c09af906794e7e091e30c0ef6f

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
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Text(
          'Are you feeling better?',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
<<<<<<< HEAD
*/
*/
=======
>>>>>>> 89bb3152b9f8f4c09af906794e7e091e30c0ef6f
