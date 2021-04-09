import 'package:flutter/material.dart';

//polymorphism  => one from many
class MyLogoContainer extends StatelessWidget {
  const MyLogoContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        // color:Colors.green
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Colors.grey.shade300,
            offset: Offset(3, 5),
            spreadRadius: 3,
          ),
        ],
      ),
      // child: Icon(
      //   Icons.hail,
      //   color: Colors.white,
      //   size: 50.0,
      // ),

      child: Image(
        image: AssetImage('assets/images/logo.png'),
      ),
    );
  }
}
