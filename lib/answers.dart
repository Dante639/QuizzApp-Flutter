import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override

   final VoidCallback selectH;
   final String answerText;

  Answer(this.selectH,this.answerText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: TextButton.styleFrom(
            minimumSize: Size(33,60),
            padding: EdgeInsets.all(26.5),
            foregroundColor: Colors.black,
            backgroundColor: Colors.purple,
            disabledForegroundColor:Colors.red,
            surfaceTintColor: Colors.red,
            shadowColor: Colors.red
        ),
        child: Text(answerText,style: TextStyle (fontWeight: FontWeight.w600,fontSize: 16.9),),
        onPressed: selectH,
      ),
    );
  }
}
