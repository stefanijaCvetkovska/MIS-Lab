import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClothesAnswer extends StatelessWidget {
  String answerText;
  VoidCallback clicked;

  ClothesAnswer(this.clicked, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: SizedBox(
          width: 200.0,
          child: ElevatedButton(
          // ignore: sort_child_properties_last
          child: Text(
            answerText,
            style: TextStyle(
              color: Colors.red.shade400
            ),
          ),
          onPressed: clicked,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade100),
            
          ),
        )
        ) 
      );
  }
}
