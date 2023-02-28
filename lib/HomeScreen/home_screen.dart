import 'package:flutter/material.dart';
import 'package:kbc_demo/HomeScreen/result.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int points = 0;

  int i = 0;
  int j = 0;
  List qaList = [
    "An ant can lift 2000 times its body weight.",
    "Density and volume are used to calculate a cube’s mass. ",
    "Only one capital exists in South Africa. ",
    "The world’s largest island is Greenland",
    "The world’s longest coastline is in China. "
  ];
  List ansList = [false, true, false, true, false];
  List stuAnsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xff277CCC),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                  child: Text(
                    "${i + 1}",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
                Text(
                  "${qaList[i]}",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                  onPressed: () {
                    if (i < qaList.length) {
                      stuAnsList.add(true);
                      setState(() {
                        j++;
                      });
                    }
                    if (i < qaList.length - 1) {
                      setState(() {
                        i++;
                      });
                    }
                  },
                  label: Text("True")),
              FloatingActionButton.extended(
                  onPressed: () {
                    if (i < qaList.length) {
                      stuAnsList.add(false);
                      setState(() {
                        j++;
                      });
                    }
                    if (i < qaList.length - 1) {
                      setState(() {
                        i++;
                      });
                    }
                  },
                  label: Text("False")),
            ],
          ),
          SizedBox(height: 15),
          Visibility(
              visible: j == 5 ? true : false,
              child: FloatingActionButton.extended(
                  onPressed: () {
                    Finish();
                    //  print("${stuAnsList}");
                    setState(() {
                      Navigator.pushReplacementNamed(context, "Result",
                          arguments: points);
                    });
                  },
                  label: Text("Finish"))),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red[100],
            child: Image.asset("Assets/images/money.jpg", fit: BoxFit.fill),
          )
        ],
      ),
    );
  }

  void Finish() {
    for (int i = 0; i < ansList.length; i++) {
      if (ansList[i] == stuAnsList[i]) {
        points++;
      }
    }
  }
}
