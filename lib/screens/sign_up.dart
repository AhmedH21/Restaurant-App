import 'package:dsc_task05/reuseable_widgets/PasswordField.dart';
import 'package:dsc_task05/reuseable_widgets/TextField.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Sign Up",style: TextStyle(fontSize:25 ,fontWeight: FontWeight.bold),),
        MyTextField(
          labelText: 'User Name',
          hintText: 'User Name',
          icon: Icons.person,
        ),
        MyTextField(
          labelText: 'Email',
          hintText: 'Email',
          icon: Icons.email,
        ),
        PasswordField(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: Text('Create Account', style: TextStyle(fontSize: 24),),
    onPressed: () {
      Navigator.pushNamed(context, '/restaurant');
    }),],
      ),
    );
  }
}
