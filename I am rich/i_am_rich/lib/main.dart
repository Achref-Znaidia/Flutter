import 'package:flutter/material.dart';

void main() {
  runApp(Logstate());
}

class Logstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber,
                    foregroundImage: AssetImage('lib/Assets/avatar.png'),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.blueGrey[900],
                      ),
                      title: Text(
                        'Achref ZNAIDIA',
                        style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'PTSans',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 200,
                  child: Divider(
                    color: Colors.blueGrey[900],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'Devops Tools',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PTSans',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('lib/Assets/DevopsTools.jpg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 200,
                  child: Divider(
                    color: Colors.blueGrey[900],
                  ),
                ),
                Container(
                  height: 40,
                  width: 200,
                  padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                  margin: EdgeInsets.all(10),
                  color: Colors.blueGrey[900],
                  child: Text(
                    'Good',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'PTSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
