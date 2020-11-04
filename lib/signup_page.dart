import 'dart:ui';

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _secureText = true;
  bool _isChecked = false;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 24),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Username'),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    obscureText: _secureText,
                    decoration: InputDecoration(
                        hintText: 'Enter password',
                        suffixIcon: IconButton(
                          onPressed: showHide,
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                  ),
                  TextField(
                    obscureText: _secureText,
                    decoration: InputDecoration(
                        hintText: 'Confirm password',
                        suffixIcon: IconButton(
                          onPressed: showHide,
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                  ),
                  Text("Available to be a :"),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                      ),
                      Text("Mentor"),
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                      ),
                      Text("Mentee"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _isChecked = value;
                          });
                        },
                      ),
                      Expanded(
                        child: Text(
                            "I affirm that I have read and accept to be bound by the AnitaB.org Code of Conduct, Terms and Privacy Policy. Futher, I consent to use of my information for the stated purpose."),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 45,
                    width: 250,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Colors.greenAccent,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
