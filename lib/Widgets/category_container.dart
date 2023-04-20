import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({super.key, required this.text});

  final String text;

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(20),    
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 4),
        child: Text(widget.text),
      ),
    );
  }
}