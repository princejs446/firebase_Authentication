
import 'package:firebase_authentication/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          // User is logged in
          if (snapshot.hasData) {
            return Homescreen();  // Or your home screen after login
          }
          // User is not logged in
 // Show login/signup
        }
        return CircularProgressIndicator();  // Loading state
      },
    );
  }
}