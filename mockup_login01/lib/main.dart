import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final midia = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: midia.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 35),
            Image.asset("images/logo.jpeg", scale: 1.5),
            const SizedBox(height: 10),
            const Text(
              "Get your Money",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const Text(
              "Under Control",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            const SizedBox(height: 25),
            const Text(
              "Manage your expenses.",
              style: TextStyle(
                  color: Color.fromARGB(255, 158, 158, 145), fontSize: 25),
            ),
            const Text(
              "Seamlessly.",
              style: TextStyle(
                  color: Color.fromARGB(255, 158, 158, 145), fontSize: 25),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 79, 55, 216)),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 106),
                  child: Text("Sign Up with Email ID"),
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(FontAwesomeIcons.google, color: Colors.red),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Sign Up with Google",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",
                    style: TextStyle(color: Colors.white, fontSize: 18)),
                TextButton(
                    onPressed: () {},
                    child: const Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 18)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
