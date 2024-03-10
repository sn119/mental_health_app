import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyJournalApp(),
  ));
}

class MyJournalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: WelcomePage(),
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
                controller: _answerController2,
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
                    MaterialPageRoute(builder: (context) => _BreathingSession()),
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

//welcome main page
class WelcomePage extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {

/*
 Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Image.asset('assets/land.gif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,),

*/

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/land.gif'),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child: AnimatedOpacity (
            duration: Duration(seconds: 1), 
            opacity: 1.0,
    
            child: ElevatedButton (
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _FeelingPageState()),
                );
              },

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              child: Text("Start your Journey", style: TextStyle(fontSize: 48)),
            ),
          ),
        ),
      ),
    );
  }
}




//How are u feeling page

class _FeelingPageState extends StatefulWidget {
  @override
  __FeelingPageStateState createState() => __FeelingPageStateState();
}

class __FeelingPageStateState extends State <_FeelingPageState> {
  int _counter = 0;
  String _feeling = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 158, 201, 220),
      appBar: AppBar(
        title: Text('How are you feeling today?'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  print('button pressed!');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JournalPage()),
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



//breathing session page
class _BreathingSession extends StatefulWidget {
  @override
  __BreathingSessionState createState() => __BreathingSessionState();
}

class __BreathingSessionState extends State <_BreathingSession>{
  int counter  = 0;
  int maxTime = 30;
  String message = '';

  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer){
      if (counter < maxTime){
        if (counter % 10 == 0){
          setMessage('Breath In');
        }
        else if (counter % 10 == 5){
          setMessage('Breath Out');
        }
        counter += 1;
      } 
      else{
        timer.cancel();
        setMessage('Breathing Session Completed 🧘');
      }
    });
  }
  void setMessage(String newMessage){
    setState(() {
      message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Breathing Session'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Breathing session in progress...',
              style: TextStyle(fontSize:30),
            ),
            SizedBox(height: 20),
            Text(
              message,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FinalPage()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}



//final page
class FinalPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children:[
          Image.asset('assets/land.gif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Congrats! You Have Completed Your Journey of Relaxation.',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    
                  ),
                ),

                Text(
                  'We genuinely hope these activties have helped you relax.',
                  style: TextStyle(
                    fontSize: 24.0, color: Colors.white,
                  ),
                ),

                Text(
                  'This app is always there to help with your anxiety whenever and wherever you may need it.',
                  style: TextStyle(
                    fontSize: 24.0,
                    color:Colors.white,
                  )
                )
              ],
            )
          )
        ]
      )
    );
  }
}