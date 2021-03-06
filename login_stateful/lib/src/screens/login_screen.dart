import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
         child: Column(
           children: [
             Container(margin: EdgeInsets.only(top: 25.0)),
             emailField(),
             Container(margin: EdgeInsets.only(top: 25.0)),
             passwordField(),
             Container(margin: EdgeInsets.only(top: 25.0)),
             submitButton(),
           ],
         )
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@domain.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: submitTapped,
    );
  }

  submitTapped() {
    print('Submit button tapped');
  }
}
