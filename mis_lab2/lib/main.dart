import 'package:flutter/material.dart';
import 'package:mis_lab2/clothes_question.dart';
import 'package:mis_lab2/clothes_answer.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 
  var questions = [
    {
      'question': 'Select jacket type',
      'answer': [
        'Leather', 
        'Denim', 
        'Bomber'
        ]
    },
     {
      'question': 'Select top type',
      'answer': [
        'Black Turtleneck', 
        'White Shirt', 
        'Sweather'
        ]
    },
     {
      'question': 'Select bottom type',
      'answer': [
        'Jeans', 
        'Skirt', 
        'Sweatpants'
        ]
    },
    {
      'question': 'Select shoe type',
      'answer': [
        'Boots', 
        'Stilettos', 
        'Sneakers'
        ]
    }
  ];

  var questionIndex = 0;

   void _clicked() {
    setState(() {
      if(questionIndex + 1 < questions.length){
        questionIndex += 1;
      }else{
        questionIndex = 0;
      }
    });
    print('Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab2 - Mobile Information Systems',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clothes app'),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[questionIndex]['question'] as String),

            ...(questions[questionIndex]['answer'] as List<String>).map(
              (answer) {
              return ClothesAnswer(_clicked, answer);
            })
          ],
        ),
      ),
    );
  }
}
