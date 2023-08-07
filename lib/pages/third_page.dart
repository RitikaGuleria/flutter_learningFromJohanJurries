import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  final String name;
  ThirdPage({required this.name});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton( child:Text("Hello ${widget.name} Go back to main page.") ,onPressed: (){
              Navigator.pop(context,'Hello Abhireet');
            })
          ],
        ),
      ),
    );
  }
}
