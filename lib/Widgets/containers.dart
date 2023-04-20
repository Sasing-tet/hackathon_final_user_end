import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:home/Widgets/container_card.dart';

import '../data.dart';

class Containerz extends StatefulWidget {
  const Containerz({super.key});

  @override
  State<Containerz> createState() => _ContainerzState();
}

class _ContainerzState extends State<Containerz> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          volunteeringEvents.where((element) => element['organizationType'] != 'Government').map((e)=>  Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: ContainerCard(lists: e['organizationName']),
          )).toList()   
    
        
      ),
    );
  }
}