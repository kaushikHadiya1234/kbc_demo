import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    int points = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Check Result",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Assets/images/win1.jpg",fit: BoxFit.contain,),
            Text("${points}/5",style: TextStyle(fontSize: 20,color: Colors.white),),
            SizedBox(height: 20),
            FloatingActionButton.extended(onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            }, label: Text("Back"))
          ],
        ),
      )
    );
  }
}
