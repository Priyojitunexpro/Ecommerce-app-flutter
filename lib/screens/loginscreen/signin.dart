import 'package:ecom2/constants.dart';
import 'package:ecom2/screens/loginscreen/signinbody.dart';
import 'package:flutter/material.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: siginbody(),
    );
  }
}
