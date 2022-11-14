import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

//_MyAppState (_) Its means Private !!!
class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'QuestionText': 'What\'s your favorite Game?',
      'answers': [
        {'text': 'DMC', "score": 25},
        {'text': 'Fatal Frame', "score": 35},
        {'text': 'Silent Hill', "score": 50},
        {'text': 'Resident Evil', "score": 25}
      ]
    },
    {
      'QuestionText': 'What\'s your favorite Music Band\'s?',
      'answers': [
        {'text': 'Bring Me The Horizon', "score": 35},
        {'text': 'Linkin Park', "score": 50},
        {'text': 'Ice Nine Kills', "score": 35},
        {'text': 'Papa Roach', "score": 25},
      ]
    },
    {
      'QuestionText': 'What\'s your favorite Movie',
      'answers': [
        {'text': 'I Not Liked Movie\'s', "score": 10},
        {'text': 'I Love Slasher Movie\'s', "score": 30},
        {'text': 'Silent Hill', "score": 50},
        {'text': 'I Love Horror  Movie\'s', "score": 52},
      ]
    },
    {
      'QuestionText': 'What\'s your favorite Food?',
      'answers': [
        {'text': 'Pizza', "score": 42},
        {'text': 'I Know It\'s Not Food But, Chips', "score": 53},
        {'text': 'Egg & Beacon', "score": 55},
        {'text': 'Just Sandwich', "score": 20},
      ]
    },
    {
      'QuestionText': 'What\'s your favorite Anime?',
      'answers': [
        {'text': 'I love Horror', "score": 45},
        {'text': 'Ito Junji Anime\'s', "score": 58},
        {'text': 'I love Isekai', "score": 32},
        {'text': 'I love Cyberpunk', "score": 29},
      ]
    },
    {
      'QuestionText': 'What\'s your favorite Horror Book\'s?',
      'answers': [
        {'text': 'I love Howard Philips Lovecraft Book\'s', "score": 105},
        {'text': 'I love Ito Junji Manga\'s', "score": 105},
        {'text': 'I love Ito Stephen King Book\'s', 'score': 100},
        {'text': 'I love Clive Barker Book\'s', "score": 95},
      ]
    },
  ];

  var questindex = 0;
  var totalScore = 0;

  void resTartQuiz() {
    setState(() {
      questindex = 0;
      totalScore = 0;
    });
  }

  void qAnswer(int score) {
    totalScore += score;

    setState(() {
      questindex = questindex + 1;
    });
    print(questindex);

    if (questindex < questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'LeT\'s pLaY',
              textScaleFactor: 1.5,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
          ),
        ),
        body: questindex < questions.length
            ? Quiz(
                qAnswer: qAnswer,
                questindex: questindex,
                questions: questions,
              )
            : Result(totalScore, resTartQuiz),
      ),
    );
  }
}
