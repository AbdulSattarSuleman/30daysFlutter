import 'package:day3/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.contain,
              height: 250,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 29.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.HomePage);
                    },
                    // ignore: prefer_const_constructors
                    child: Text(
                      'Login',
                      // ignore: prefer_const_constructors
                      style: TextStyle(fontSize: 20),
                    ),
                    style: TextButton.styleFrom(
                      elevation: 3,
                      minimumSize: Size(150, 30),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
