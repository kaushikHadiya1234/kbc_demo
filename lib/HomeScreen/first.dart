import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KBC",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.account_circle_rounded, size: 30),
          ),
        ],
        backgroundColor: Colors.red[900],
      ),
      body: Stack(
        children: [
          Image.asset("Assets/images/kbc.jpg",width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: FloatingActionButton.extended(onPressed: (){
                setState(() {
                  Navigator.pushNamed(context, "home");
                });
              }, label: Text("Enter The Quiz ->")),
            ),
          )
        ],
      ),
    );
  }
}
