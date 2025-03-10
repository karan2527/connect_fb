import 'package:connect_fb/screen/signup_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// THIS LOG OUT
  /// Method to handle logout
  Future<void> _logout() async {
    // Sign out from Firebase and GoogleSignIn
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();

    // Navigate to the sign-in screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupScreen())) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen"),
            SizedBox(height: 20),
            ElevatedButton(
              /// HERE WE CALL THE FUNCTION
              onPressed: _logout,
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}