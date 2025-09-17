import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override //Quick Fix
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

void login(
  dynamic firebaseAuth,
  dynamic emailController,
  dynamic psswordController,
) async {
  await firebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: psswordController.text,
  );
}

void signUp(dynamic firebaseAuth) async {
  await firebaseAuth.instance.createUserWithEmailAndPassword();
}
