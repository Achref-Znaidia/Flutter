import 'dart:ui';
import 'constants.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final usermail = TextEditingController();
  final password = TextEditingController();
  bool _passwordVisible = false;

  // @override
  // void initState() {
  //   super.initState();
  //   _passwordVisible = false;
  // }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.red[200],
              secondary: Color(0XFFEF9A9A),
            ),
      ),
      child: Scaffold(
        body: Container(
          color: Colors.red[400],
          child: Expanded(
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Let\'s sign you in.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            //fontFamily: 'Arial Bold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 10,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.red[300],
                      border: Border.all(
                        color: Color(0XFFEF9A9A),
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: usermail,
                        decoration: InputDecoration(
                          // filled: true,
                          // fillColor: redclaire,
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(20))),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Color(0XFFEF9A9A),
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          icon: Icon(
                            Icons.mail_rounded,
                            color: Color(0XFFEF9A9A),
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 10,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.red[300],
                      border: Border.all(
                        color: Color(0XFFEF9A9A),
                        width: 1.0,
                      ),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: password,
                        obscureText: !_passwordVisible,
                        decoration: InputDecoration(
                          // filled: true,
                          // fillColor: redclaire,
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(20))),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Color(0XFFEF9A9A),
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          icon: Icon(
                            Icons.lock_rounded,
                            color: Color(0XFFEF9A9A),
                          ),
                          // suffixIcon: IconButton(
                          //   icon: Icon(
                          //     // Based on passwordVisible state choose the icon
                          //     _passwordVisible
                          //         ? Icons.visibility
                          //         : Icons.visibility_off,
                          //     color: Theme.of(context).primaryColorDark,
                          //   ),
                          //   onPressed: () {
                          //     // Update the state i.e. toogle the state of passwordVisible variable
                          //     setState(() {
                          //       _passwordVisible = !_passwordVisible;
                          //     });
                          //   },
                          // ),
                        ),
                        style: TextStyle(
                          fontSize: 16,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'Don\'t have an account?Register',
                      style: TextStyle(
                        color: white,
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
                      child: Container(
                        width: 230,
                        height: 60,
                        decoration: BoxDecoration(
                          color: amber,
                          border: Border.all(
                            color: amber,
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
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: black,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
