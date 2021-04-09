import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome Home Screen'),
        // ),

        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // first container in the stack
            Container(
              width: size.width,
              height: size.height,
              color: Colors.green.shade600,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 30),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Hey',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 40,
                        ),
                      ],
                    ),
                    Text(
                      'Lets search your grocery food',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: size.width,
              height: size.height * 0.7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
