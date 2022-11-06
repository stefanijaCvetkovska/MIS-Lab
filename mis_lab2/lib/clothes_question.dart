import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClothesQuestion extends StatelessWidget {
  String questionContent;
  ClothesQuestion(this.questionContent);
  
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        
        child: Text(
          questionContent,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20, 
            color: Colors.blue.shade500
          ),
        )
      );
  }
}
