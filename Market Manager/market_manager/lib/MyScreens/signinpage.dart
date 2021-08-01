import 'dart:ui';
import '../constants.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../MyWidgets/emailInput.dart';
import '../MyWidgets/passInput.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  String user = '';
  String pass = '';

  // @override
  // void initState() {
  //   super.initState();
  //   _passwordVisible = false;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_left_rounded,
                            color: kColorWhite,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              color: kColorWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              fontFamily: 'OtomanopeeOne-Regular',
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: DefaultTextStyle(
                    style: TextStyle(
                      color: kColorWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      //fontFamily: 'Arial Bold',
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText('Let\'s sign you in')
                      ],
                      // textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: EmailInput(
              onChange: (value) {
                user = value;
              },
            ),
          ),
          Expanded(
            child: PassInput(
              onChange: (value) {
                pass = value;
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Don\'t have an account ? back to register',
                style: TextStyle(
                  color: kColorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  //fontFamily: 'Arial Bold',
                ),
              ),
            ),
          ),
          Expanded(
            //flex: 2,
            child: Positioned(
              bottom: 8,
              right: 8,
              left: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: 'Sign',
                  child: Container(
                    width: 230,
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Signin()),
                        // );
                        print(user + pass);
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
            ),
          ),
        ],
      ),
    );
  }
}
