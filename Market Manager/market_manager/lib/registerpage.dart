import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.lightGreenAccent,
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
      ],
    );
  }
}
