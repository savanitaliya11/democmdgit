import 'package:demo/Question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    var questionIndex = 0;

    void answerQuestion (){

      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questionIndex);

    }

    var question = [
      'What is your name?',
      'What is your surname?',
      'What is your lastname?',
      'What is your middle name?',
      'What is your nickname?',
      'What is your city name?'
    ];

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: [
             Question(question[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer')),

            ElevatedButton(onPressed: answerQuestion, child: Text('Answer2')),
          ],


      ),

    )
    );
  }
}
