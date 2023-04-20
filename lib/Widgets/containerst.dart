import 'package:flutter/material.dart';

import '../data.dart';
import 'container_cardt.dart';

class ContainerzT extends StatefulWidget {
  const ContainerzT({super.key});

  @override
  State<ContainerzT> createState() => _ContainerzTState();
}

class _ContainerzTState extends State<ContainerzT> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: 
          volunteeringEvents.where((element) => element['organizationType'] != 'Government').map((e)=>  Padding(
            padding: const EdgeInsets.symmetric(horizontal:8.0),
            child: ContainerCardT(lists: e['organizationName']),
          )).toList()   
    
        
      ),
    );
  }
}