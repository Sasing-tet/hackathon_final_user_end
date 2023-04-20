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
          volunteeringOrgs.map((e)=>  ContainerCardT(lists: e['organizationName'].toString(),desc:  e['description'].toString(),cat:  e['category'].toString(),orgT:  e['organizationType'].toString(),)).toList()   
    
        
      ),
    );
  }
}