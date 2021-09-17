
import 'package:flutter/material.dart';
import 'package:school_buddy/Widgets/signup_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key, sendname}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return const SignUpWidget();
  }
}
