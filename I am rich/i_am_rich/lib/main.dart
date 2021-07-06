import 'package:flutter/material.dart';

void main() {
  runApp(Logstate());
}

class Logstate extends StatefulWidget {
  const Logstate({Key? key}) : super(key: key);

  @override
  _LogstateState createState() => _LogstateState();
}

class _LogstateState extends State<Logstate> {
  String feel = 'good';
  void _toggleFavorite() {
    setState(() {
      if (feel == 'good') {
        feel = 'exelent';
      } else {
        feel = 'good';
      }
    });
  }

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
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.amber,
                      foregroundImage: AssetImage('lib/Assets/avatar.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
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
                ),
                Expanded(
                  child: SizedBox(
                    height: 10,
                    width: 200,
                    child: Divider(
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('lib/Assets/DevopsTools.jpg'),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 10,
                    width: 200,
                    child: Divider(
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: _toggleFavorite,
                    child: Container(
                      height: 40,
                      width: 200,
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      margin: EdgeInsets.all(10),
                      color: Colors.blueGrey[900],
                      child: Text(
                        '$feel',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PTSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
