import 'package:flutter/material.dart';
import 'package:onlineshopping/constant/textStyleConstant.dart';
import 'package:onlineshopping/screen/quantityScreen.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var myList = [
    'vegetable',
    'fruits',
    'meat',
    'drinks',
    'rice',
    'meat',
    'drinks',
    'rice'
  ];
  var imageList = [
    'food.png',
    'grocery.png',
    'meat.png',
    'veg.png',
    'grocery.png',
    'meat.png',
    'veg.png',
    'grocery.png'
  ];

  // maps which basically dictionary or other case they structured like json
  var vegetable = {'name': 'ginger', 'price': 1};

  //we will only use the static single color for the background......
  // var colorList = [
  //   Colors.red,
  //   Colors.grey,
  //   Colors.yellow,
  //   Colors.amber,
  //   Colors.blue
  // ];

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,

                        // if you want to change the size of that icon just change the number here
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Categories',
                      style: whiteHeading,
                    ),
                    SizedBox(width: size.width * 0.1),
                  ],
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
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(
                myList.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuantityScreen(
                                  title: myList[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/${imageList[index]}',
                                ),
                              ),
                            ),
                          ),
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
