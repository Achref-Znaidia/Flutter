import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../MyWidgets/emailInput.dart';
import '../MyWidgets/passInput.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String user = '';
  String pass = '';
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
                        mainAxisAlignment: MainAxisAlignment.start,
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
            child: DefaultTextStyle(
              style: TextStyle(
                color: kColorWhite,
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                //fontFamily: 'Arial Bold',
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [TypewriterAnimatedText('Register from here')],
              ),
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
                'Create a free account',
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
                  tag: 'register',
                  child: Container(
                    width: 230,
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Signin()),
                        // );
                        print(user + pass);
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
            ),
          ),
        ],
      ),
    );
  }
}
