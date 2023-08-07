import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to main page"),onPressed: (){
            Navigator.pop(context);
        },
        ),
      ),
    );
  }
}
