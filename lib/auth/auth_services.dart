import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthServices extends GetxController {
  //instance of FirebaseAuth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //method to log in user
  void login(String email, String pass, BuildContext context) async {
    try {
      // ignore: unused_local_variable
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('LOGIN SUCCESSFULL')),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('No User Found')),
        );
      } else if (e.code == 'wrong-password') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Incorrect Password')),
        );
      } else if (e.code == 'network-request-failed') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('NetWork Error please try again')),
        );
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('An unknown error occurred. Please try again.')),
        );
      }
    }
  }

  //method to sign up user
  void signUp(
      {required String email,
      required String pass,
      required BuildContext context}) async {
    try {
      // ignore: unused_local_variable
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: pass,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Weak Password: Try Strong Password')),
        );
      } else if (e.code == 'email-already-in-use') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email Already in Use')),
        );
      } else if (e.code == 'network-request-failed') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('NetWork Error please try again')),
        );
      } else if (e.code == 'invalid-email') {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid email format')),
        );
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('An unknown error occurred. Please try again')),
        );
      }
    }
  }
  //method to sign out user
}
