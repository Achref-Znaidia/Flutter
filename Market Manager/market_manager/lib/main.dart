import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Logpage());
}

class Logpage extends StatefulWidget {
  const Logpage({Key? key}) : super(key: key);

  @override
  _LogpageState createState() => _LogpageState();
}

class _LogpageState extends State<Logpage> {
  Color _red = Color.fromARGB(255, 255, 56, 83);
  Color _redclaire = Color.fromARGB(255, 255, 184, 197);
  Color _amber = Colors.amber;
  Color _white = Colors.white;
  Color _black = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[400],
        scaffoldBackgroundColor: Colors.red[400],
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.red[400],
        body: SafeArea(
          child: Expanded(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Text(
                              'Sell your staff.',
                              style: TextStyle(
                                color: _white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Text(
                              'Create a free account and get your market space.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _redclaire,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 230,
                      height: 60,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Container(
                              width: 125,
                              height: 60,
                              decoration: BoxDecoration(
                                color: _white,
                                border: Border.all(
                                  color: _white,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: _black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    //fontFamily: 'Arial Bold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: Container(
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                color: _amber,
                                border: Border.all(
                                  color: _amber,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                    color: _black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    //fontFamily: 'Arial Bold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
