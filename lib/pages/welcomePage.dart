import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mycard/constants.dart';
import 'package:mycard/pages/loginPage.dart';
import 'package:mycard/widgets/widgetTree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Lottie.asset("assets/lotties/welcomeLottie.json"),
                FittedBox(child: Text("My Card App", style: AppTitlestyle)),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(pageTitle: "Get Started ", buttonText: "Register");
                        },
                      ),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text("Get Started"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(
                            buttonText: "Login",
                            pageTitle: "Login",
                          );
                        },
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
