import 'package:flutter/material.dart';

import '../routes/routes.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  dynamic result="Data to come back";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(RouteManager.secondPage);
              },
              child: Text("Go to second button")
            ),
            SizedBox(height: 5,),
            ElevatedButton(child: Text("Go to third button"), onPressed: () async {
              var resultback= await Navigator.of(context).pushNamed(RouteManager.thirdPage, arguments: { 'name': 'Abhireet', });
              setState(() {
                result=resultback;
              });
            }
            ),
            Text('$result'),
          ],
        ),
      ),
    );
  }
}
