import 'dart:ui';

import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final usermail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreenAccent,
        child: Column(
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
                              color: Colors.white,
                            ),
                            Text(
                              'Back',
                              style: TextStyle(
                                color: Colors.white,
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
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
                child: TextFormField(
                  controller: usermail,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
