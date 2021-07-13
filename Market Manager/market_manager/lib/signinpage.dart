import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.access_alarm_outlined,
          )),
    );
  }
}
