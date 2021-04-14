import 'package:flutter/material.dart';
import 'package:onlineshopping/widgets/categoryContainer.dart';
import 'package:onlineshopping/widgets/middleContainer.dart';

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
                      height: size.height * 0.25,
                      child: Column(
                        children: [
                          // categories text and see all button
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MiddleContainer(
                                  size: size,
                                  discount: '30 % Discount',
                                  imagepath: 'assets/images/food.png',
                                  color: Colors.grey.shade300,
                                ),
                                MiddleContainer(
                                  size: size,
                                  discount: '10 % Discount',
                                  imagepath: 'assets/images/veg.png',
                                  color: Colors.orange.shade300,
                                ),
                                MiddleContainer(
                                  size: size,
                                  discount: '15 % Discount',
                                  imagepath: 'assets/images/meat.png',
                                  color: Colors.lightBlue.shade300,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )

                    // bottom container with large image size children
                    //named as popular deals

                    ,
                    BottomDealsContainer(
                      size: size,
                    ),
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

class BottomDealsContainer extends StatelessWidget {
  const BottomDealsContainer({
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
                Text('Popular Deals'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See all',
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
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/food.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/meat.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/veg.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/veg.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
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
