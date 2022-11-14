import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetALL;

  Result(this.resultScore, this.resetALL);

  String get Resultfully {
    var resutTeXt;
    if (resultScore <= 270) {
      resutTeXt = 'Very Bad';
    } else if (resultScore < 280) {
      resutTeXt = 'Not Bad Sadly, You Not Like a me';
    } else if (resultScore <= 369) {
      resutTeXt = 'You Like a me! Cool. Big Respect';
    } else {
      resutTeXt = 'This is the worst result in the world';
    }
    return resutTeXt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(Resultfully,
              style: TextStyle(fontSize: 56, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center),
          TextButton(
            onPressed: resetALL,
            child: Center(
              child: Text(
                'Restart',textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    letterSpacing: 24.7),
              ),
            ),
            style: TextButton.styleFrom(
                minimumSize: Size(41, 55),
                padding: EdgeInsets.symmetric(horizontal: 35.4, vertical: 42.1),
                foregroundColor: Colors.black,
                backgroundColor: Colors.purple,
                disabledForegroundColor: Colors.red,
                surfaceTintColor: Colors.red,
                shadowColor: Colors.red),
          ),
        ],
      ),
    );
  }
}
