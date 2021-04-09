import 'package:flutter/material.dart';
import 'package:onlineshopping/widgets/myLogoContainer.dart';
import 'package:onlineshopping/screen/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  var userEmail;
  var userPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // we are setting the logo of the application here
            MyLogoContainer(),

            Form(
              key: _key,
              child: Column(
                children: [
                  // email text field,
                  Container(
                    width: 200,
                    height: 70,
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                        // onChanged: (value) {
                        //   userEmail = value;
                        //   print(userEmail);
                        // },
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Enter your email';
                          } else {
                            userEmail = value;
                          }
                        }),
                  ),

                  // password text field
                  Container(
                    width: 200,
                    height: 70,
                    child: TextFormField(
                      //keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            // fontWeight: FontWeight.bold,

                            ),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Enter your Password';
                        } else {
                          userPassword = value;
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),

            // login button
            ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('please input all fields'),
                //   ),
                // );
                formValidation();
              },
              child: Text('Login'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  formValidation() {
    if (_key.currentState.validate()) {
      print('input fields are valid');
    } else {
      print('please input the value');
    }
  }
}
