import 'dart:ui';
import 'signinpage.dart';
import 'registerpage.dart';
import 'package:flutter/material.dart';

//const Color _red = Color.fromARGB(255, 255, 56, 83);
//const Color _redclaire = Color.fromARGB(255, 255, 184, 197);
const Color _amber = Colors.amber;
const Color _white = Colors.white;
const Color _black = Colors.black;

class Logpage extends StatefulWidget {
  const Logpage({Key? key}) : super(key: key);

  @override
  _LogpageState createState() => _LogpageState();
}

class _LogpageState extends State<Logpage> {
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
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.red[400],
          body: SafeArea(
            child: Expanded(
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    'Skip',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                      fontFamily: 'OtomanopeeOne-Regular',
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: _white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        child: Image(
                          image: AssetImage(
                            'Assets/Logo.png',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Sell your staff.',
                              style: TextStyle(
                                color: _black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Create a free account and get your market space.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: _black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                //fontFamily: 'OtomanopeeOne-Regular',
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()),
                                    );
                                  },
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signin()),
                                    );
                                  },
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
      ),
    );
  }
}
