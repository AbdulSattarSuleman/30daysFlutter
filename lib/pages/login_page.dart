import 'package:day3/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.contain,
              height: 250,
            ),
            Text(
              'Welcome $name',
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
                  InkWell(
                    onTap: ()async{
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.HomePage);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeButton?80: 6)
                      ),
                      width: changeButton?80:120,
                      height: 50,
                      alignment: Alignment.center,
                      
                      // ignore: prefer_const_constructors
                      child: changeButton?Icon(Icons.verified_user_sharp,color: Colors.white):Text(
                        'Login',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
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
