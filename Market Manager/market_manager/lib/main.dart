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
  void _handleGoogleSignIn() {
    print('ok');
  }

  @override
  Widget build(BuildContext context) {
    var _controller;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Expanded(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.black,
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
                              'Sign in to your account',
                              style: TextStyle(
                                color: Colors.black,
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
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: _handleGoogleSignIn,
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Sign in with google',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton.icon(
                            onPressed: _handleGoogleSignIn,
                            icon: Icon(
                              Icons.facebook_outlined,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Sign in with facebook',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                                //fontFamily: 'Arial Bold',
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                          child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: "UserName",
                          suffixIcon: IconButton(
                            onPressed: () => _controller.clear,
                            icon: Icon(Icons.clear),
                          ),
                        ),
                      )),
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
