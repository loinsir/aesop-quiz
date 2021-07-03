import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Aesop Quiz App"),
        backgroundColor: Colors.deepPurple,
        leading: Container(), //for removing back button
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/quiz.jpg',
              width: 0.8 * width,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.024),
          ),
          Text(
            "Flutter Aesop Quiz App!",
            style:
                TextStyle(fontSize: width * 0.065, fontWeight: FontWeight.bold),
          ),
          Text(
            "Before solving quiz, You must read INFO.",
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          _buildStep(width, '1. Solve Random 3 Quiz'),
          _buildStep(width, '2. Choose the correct answer carefully.'),
          _buildStep(width, '3. Challenge World Records!'),
          Padding(
            padding: EdgeInsets.all(width * 0.048),
          ),
          Container(
            padding: EdgeInsets.only(bottom: width * 0.036),
            child: Center(
              child: ButtonTheme(
                minWidth: width * 0.8,
                height: height * 0.05,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: RaisedButton(
                  child: Text(
                    "QUIZ NOW",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.deepPurple,
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

Widget _buildStep(double width, String title) {
  return Container(
    padding: EdgeInsets.fromLTRB(
        width * 0.048, width * 0.024, width * 0.048, width * 0.024),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.check_box,
          size: width * 0.04,
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.048),
        ),
        Text(title),
      ],
    ),
  );
}
