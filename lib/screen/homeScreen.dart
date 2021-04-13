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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20),
                    //   child: Text(
                    //     'Hey',
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // for multiple lines or for paragraph
                        RichText(
                            text: TextSpan(
                                text: 'Hey ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                children: [
                              TextSpan(
                                text: 'Lets search your grocery food.',
                              ),
                            ])),
                        SizedBox(
                          width: 70,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // second container of our screen which is basically white
            Container(
                width: size.width,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    // upper container for categories
                    MyParentCategoryContainer(size: size),

                    // middle container with huge container and text
                    Container(
                      width: size.width,
                      height: size.height * 0.3,
                      child: Container(
                        width: size.width,
                        height: size.height * 0.2,
                        child: Column(
                          children: [
                            // categories text and see all button
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MiddleContainer(
                                    size: size,
                                    icon: Icon(
                                      Icons.food_bank_sharp,
                                      color: Colors.orange,
                                      size: 50,
                                    ),
                                    categoryText: 'vegetabel'.toLowerCase(),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
// main home screen stateless widget ends here

class MyParentCategoryContainer extends StatelessWidget {
  const MyParentCategoryContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            // categories text and see all button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Categories'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(color: Colors.green.shade400),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryContainer(
                    size: size,
                    icon: Icon(
                      Icons.food_bank,
                      color: Colors.blue,
                      size: 50,
                    ),
                    categoryText: 'fruits',
                  ),
                  CategoryContainer(
                    size: size,
                    icon: Icon(
                      Icons.food_bank_sharp,
                      color: Colors.orange,
                      size: 50,
                    ),
                    categoryText: 'meat',
                  ),
                  CategoryContainer(
                    size: size,
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 50,
                    ),
                    categoryText: 'Drinks',
                  ),
                  CategoryContainer(
                    size: size,
                    icon: Icon(
                      Icons.food_bank_sharp,
                      color: Colors.orange,
                      size: 50,
                    ),
                    categoryText: 'chocolate',
                  ),
                  CategoryContainer(
                    size: size,
                    icon: Icon(
                      Icons.food_bank_sharp,
                      color: Colors.orange,
                      size: 50,
                    ),
                    categoryText: 'vegetabel'.toLowerCase(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  CategoryContainer({
    this.size,
    this.icon,
    this.categoryText,
  });

  final Size size;
  final icon;
  final categoryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            width: size.width * 0.2,
            height: size.height * 0.1,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: icon,
          ),
          Text('$categoryText')
        ],
      ),
    );
  }
}

class MiddleContainer extends StatelessWidget {
  MiddleContainer({
    this.size,
    this.icon,
    this.categoryText,
  });

  final Size size;
  final icon;
  final categoryText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          width: size.width * 0.7,
          height: size.height * 0.2,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/food.png'),
                radius: 60,
              ),
              Column(
                children: [],
              )
            ],
          )),
    );
  }
}
