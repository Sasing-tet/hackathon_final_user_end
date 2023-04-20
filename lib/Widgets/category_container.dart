import 'package:flutter/material.dart';

import '../Screens/home_page.dart';
import '../data.dart';



class CategoryContainer extends StatefulWidget {
  const CategoryContainer({super.key, required this.text});

  final String text;

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),    
          color: Color(0xFF5C77FF),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15.0, vertical: 4),
          child: Text(widget.text, style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}