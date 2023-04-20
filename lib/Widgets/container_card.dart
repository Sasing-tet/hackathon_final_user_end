import 'package:flutter/material.dart';


class ContainerCard extends StatefulWidget {
   ContainerCard({super.key, required this.lists});

   String lists;

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                ),
                width: 170,
                height: 250,
              
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
                      height:100,
                      width: 100,
                      child: Image.network('https://i.ibb.co/gvbKnHN/Untitled-design-3.png', fit: BoxFit.fill,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text( widget.lists , textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    ),
                   
                  ],
                ),
              );
  }
}