import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        toolbarHeight: 65,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,),),
            Text("Enter your details below & free sign up", style: TextStyle(color: Color(0xF0F0F2), fontSize: 15,),),
          ],
        ),
      ),
    );
  }
}
