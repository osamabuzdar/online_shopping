import 'package:flutter/material.dart';

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
