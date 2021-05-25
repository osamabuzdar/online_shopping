import 'package:flutter/material.dart';
import 'package:onlineshopping/constant/textStyleConstant.dart';

class QuantityScreen extends StatefulWidget {
  QuantityScreen({this.title});
  final title;
  @override
  _QuantityScreenState createState() => _QuantityScreenState();
}

class _QuantityScreenState extends State<QuantityScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
          //first container background green
          Container(
            width: size.width,
            height: size.height,
            color: Colors.green.shade600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        '${widget.title}',
                        style: whiteHeading,
                      ),
                      SizedBox(
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // second container white
          Container(
              width: size.width,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              // we are only creating the container of our food items
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.4,
                    height: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 3),
                          blurRadius: 2,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              )
              // child: GridView.count(
              //   crossAxisCount: 3,
              //   children: List.generate(
              //     3,
              //     //myList.length,
              //     (index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Column(
              //           children: [
              //             Container(
              //               width: 90,
              //               height: 90,
              //               decoration: BoxDecoration(
              //                 // color: colorList[index],
              //                 borderRadius: BorderRadius.circular(20),
              //                 // image: DecorationImage(
              //                 //   image: AssetImage(
              //                 //     'assets/images/${imageList[index]}',
              //                 //   ),
              //                 // ),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              )
        ]),
      ),
    );
  }
}
