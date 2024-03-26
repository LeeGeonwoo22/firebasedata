import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String error = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // loginForm(context),
            // smsCodeInput(),
            button(),
          ],
        ),
      ),
    );
  }

  Widget button() {
    return ElevatedButton(
      onPressed: () async {
        await signInPhone(); // signInPhone 함수 호출
      },
      child: Text('Sign In'),
    );
  }

  Future<void> signInPhone() async {
    final auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      timeout: Duration(seconds: 5),
      // forceResendingToken: 11,
      phoneNumber: '+82 010 3191 3159',
      verificationCompleted: (PhoneAuthCredential credential) async {
        print('verificationCompleted');
        // await auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) async {
        print('verificationFailed message $e');
      },
      codeSent: (String verificationId, int? resendToken) async {
        print('codeSent');
      },
      codeAutoRetrievalTimeout: (String verificationId) async {
        print('codeAutoRetrievalTimeout');
      },
    );
  }
}
