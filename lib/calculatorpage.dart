// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var result = "RESULT";
  String tmp = "";
  int res = 0;
  // ignore: prefer_collection_literals
  List processList = [];
  bool minusPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 500,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        "${result}",
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "7";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "7",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "8";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "8",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "9";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "9",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        int t = int.parse(tmp);
                        if (minusPressed) {
                          t *= -1;
                        }
                        tmp = "";
                        processList.add(t);
                        for (int i = 0; i < processList.length; i += 1) {
                          res = processList[i] + res;
                          print("res: $res");
                        }
                        result = res.toString();
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "=",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "4";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "4",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "5";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "5",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "6";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "6",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        int t = int.parse(tmp);
                        if (minusPressed) {
                          t *= -1;
                        }
                        tmp = "";
                        processList.add(t);
                        minusPressed = true;
                        //processList.add("-");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "-",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "1";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "1",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "2";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "2",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "3";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "3",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        int t = int.parse(tmp);
                        tmp = "";
                        if (minusPressed) {
                          t *= -1;
                        }
                        processList.add(t);
                        minusPressed = false;
                        //processList.add("+");
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "+",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tmp += "0";
                        print("tmp : ${tmp}");
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "0",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        res = 0;
                        tmp = "";
                        result = "RESULT";
                        processList.clear();
                        minusPressed = false;
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "CLEAR",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
