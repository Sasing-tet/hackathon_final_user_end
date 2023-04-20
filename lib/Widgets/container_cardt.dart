import 'package:flutter/material.dart';


class ContainerCardT extends StatefulWidget {
   ContainerCardT({super.key, required this.lists});

   String lists;

  @override
  State<ContainerCardT> createState() => _ContainerCardTState();
}

class _ContainerCardTState extends State<ContainerCardT> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.amber,
                  ),
                  width: 360,
          
                
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Container(
                          height:120,
                          width: 120,
                          child: Image.network('https://i.ibb.co/gvbKnHN/Untitled-design-3.png', fit: BoxFit.fill,),
                        ),
                      ),
                      Flexible(child: Text( widget.lists , textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))),
                     
                    ],
                  ),
                ),
    );
  }
}