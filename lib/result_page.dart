import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmitext,
    required this.bmiresult,
    required this.bmiinterpretation,
  });
  final String bmitext;
  final String bmiresult;
  final String bmiinterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade500,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black45,
              ),
              child: Center(
                child: Text(
                  'Your Result',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(50.0),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      bmitext,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      bmiresult,
                      style:
                          TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiinterpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text(
                        'DONT CRY, STAY FIT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.red,
                          letterSpacing: 2,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              color: Colors.pink,
              height: 80,
              child: Text(
                'RE-CALCULATE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
