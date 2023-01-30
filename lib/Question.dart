import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{

  String? questionText;
  @override
  Widget build(BuildContext context) {
    return Text(questionText!);

  }

  Question(this.questionText);
}