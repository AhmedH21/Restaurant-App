import'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final IconData icon;

  const MyTextField({this.hintText, this.labelText, this.icon});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff191919),
          prefixIcon: Icon(widget.icon),
          hintText: widget.hintText,
          hintStyle: TextStyle(fontWeight: FontWeight.w400),
          labelText: widget.labelText,
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
