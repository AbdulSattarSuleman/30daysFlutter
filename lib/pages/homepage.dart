import 'package:day3/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:  ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
        }, child: Text('Login')),
      ),
    );
  }
}