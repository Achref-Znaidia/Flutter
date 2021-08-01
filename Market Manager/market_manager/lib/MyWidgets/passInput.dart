import 'package:flutter/material.dart';
import 'package:market_manager/constants.dart';

class PassInput extends StatelessWidget {
  const PassInput({Key? key, required this.onChange}) : super(key: key);
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          validator: (value) {
            if (value == null) {
              return 'Please make inputs';
            }
            return null;
          },
          onChanged: (value) {
            onChange(value);
          },
          obscureText: true,
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
    );
  }
}
