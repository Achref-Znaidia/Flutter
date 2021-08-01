import 'package:flutter/material.dart';
import 'package:market_manager/constants.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key, required this.onChange}) : super(key: key);
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: KColorRed,
        border: Border.all(
          color: KColorRedClaire,
          width: 1.0,
        ),
      ),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          onChanged: (value) {
            onChange(value);
          },
          decoration: InputDecoration(
            // filled: true,
            // fillColor: redclaire,
            // border: OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(20))),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: KColorRedClaire,
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            icon: Icon(
              Icons.mail_rounded,
              color: KColorRedClaire,
            ),
          ),
          style: TextStyle(
            fontSize: 16,
            color: kColorWhite,
          ),
        ),
      ),
    );
  }
}
