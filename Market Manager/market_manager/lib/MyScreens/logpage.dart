import 'dart:ui';
import 'signinpage.dart';
import 'registerpage.dart';
import 'shoppage.dart';
import 'package:flutter/material.dart';
import 'package:market_manager/constants.dart';

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
        primaryColor: kColorRedFance,
        scaffoldBackgroundColor: kColorRedFance,
        secondaryHeaderColor: kColorAmber,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: kColorWhite,
          ),
        ),
      ),
      home: Builder(
        builder: (context) => Scaffold(
          //backgroundColor: kColorRedFance,
          body: SafeArea(
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Shop()),
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                'Skip',
                                style: TextStyle(
                                  color: kColorWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  fontFamily: 'OtomanopeeOne-Regular',
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_rounded,
                                color: kColorWhite,
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
                            color: kColorWhite,
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
                            color: kColorWhite,
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
                          child: Hero(
                            tag: 'register',
                            child: Container(
                              width: 125,
                              height: 60,
                              decoration: BoxDecoration(
                                color: kColorWhite,
                                border: Border.all(
                                  color: kColorWhite,
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
                                    color: kColorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    //fontFamily: 'Arial Bold',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          right: 8,
                          child: Hero(
                            tag: 'Sign',
                            child: Container(
                              width: 120,
                              height: 60,
                              decoration: BoxDecoration(
                                color: kColorAmber,
                                border: Border.all(
                                  color: kColorAmber,
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
                                    color: kColorBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                    //fontFamily: 'Arial Bold',
                                  ),
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
    );
  }
}
