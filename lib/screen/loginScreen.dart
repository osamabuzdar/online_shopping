import 'package:flutter/material.dart';
import 'package:onlineshopping/widgets/myLogoContainer.dart';
import 'package:onlineshopping/screen/homeScreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // we are setting the logo of the application here
            MyLogoContainer(),

            // email text field,

            Container(
              width: 200,
              height: 70,
              child: TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
            ),

            // password text field

            Container(
              width: 200,
              height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text('login'),
      ),
    );
  }
}
