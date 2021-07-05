import 'package:flutter/material.dart';

void main() {
  runApp(Logstate());
}

class Logstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Devops Tools',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image(
                  image: AssetImage('lib/Assets/DevopsTools.jpg'),
                ),
                Container(
                  height: 40,
                  width: 200,
                  padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Text('achref'),
                ),
                Container(
                  height: 40,
                  width: 200,
                  padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  margin: EdgeInsets.all(10),
                  color: Colors.green,
                  child: Text('aya'),
                ),
                Container(
                  height: 40,
                  width: 200,
                  padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                  child: Text('Hama'),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.amber,
                  foregroundImage: AssetImage('lib/Assets/avatar.png'),
                ),
              ]),
        ),
      ),
    );
  }
}
