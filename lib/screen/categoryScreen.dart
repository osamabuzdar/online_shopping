import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var myList = ['vegetable', 'fruits', 'meat', 'drinks', 'rice'];
  var imageList = [
    'food.png',
    'grocery.png',
    'meat.png',
    'veg.png',
    'grocery.png'
  ];
  var colorList = [
    Colors.red,
    Colors.grey,
    Colors.yellow,
    Colors.amber,
    Colors.blue
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //first container background green
          Container(
            width: size.width,
            height: size.height,
            color: Colors.green.shade600,
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
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                myList.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: colorList[index],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/${imageList[index]}',
                              ),
                            ),
                          ),
                          // child: Image(
                          //   image: AssetImage(
                          //     'assets/images/${imageList[index]}',
                          //   ),
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        Text(
                          myList[index],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
