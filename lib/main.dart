import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              width: double.infinity,
              height: 450,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("assets/images/bg.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Megan Allison",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 0, 50),
                      child: Text(
                        "Traveler,  Dreamer, & Photographer",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(color: Colors.indigo),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(color: Colors.indigo),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "160",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "1543",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "250",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 55),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "ABOUT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "POSTS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    // add a divider!
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 20, 12, 4),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android_rounded,
                              color: Colors.blue,
                            ),
                         
                            Column(
                              children: [
                                Text(
                                  "Mobile",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                Text("+9462839238"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone, color: Colors.blue),
                            Column(children: [
                              Text("Work", style: TextStyle(color: Colors.blue),),
                              Text("+68293824348"),
                            ],),
                          ],),
                        Row(
                          children: [
                            Icon(Icons.email, color: Colors.blue),
                            Column(children: [
                              Text("Email", style: TextStyle(color: Colors.blue),),
                              Text("meganallison@gamil.com"),
                            ],),
                          ],),
                      ],
                    ),
                      
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
