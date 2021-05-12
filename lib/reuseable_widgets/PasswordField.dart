import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isObscure =true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon:Icon(
              isObscure ? Icons.visibility: Icons.visibility_off,
            ),
            onPressed: (){
              setState(() {
                isObscure = ! isObscure;
              });
            },
          ),
          filled: true,
          fillColor: Color(0xff191919),
          prefixIcon: Icon(Icons.lock),
          hintText: 'Password',
          hintStyle: TextStyle(fontWeight: FontWeight.w400),
          labelText: 'Password',
          labelStyle:
          TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
          helperText: '*Required ',
          helperStyle: TextStyle(color: Colors.red[600]),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 32.0),
              borderRadius: BorderRadius.circular(25.0)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

