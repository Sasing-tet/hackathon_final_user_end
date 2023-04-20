import 'package:flutter/material.dart';

import '../Screens/org_page.dart';


class ContainerCardT extends StatefulWidget {
   ContainerCardT({super.key, required this.lists,required this.desc,required this.cat,required this.orgT});

   String lists;
      final String desc;
    final String cat;
    final String orgT;

  @override
  State<ContainerCardT> createState() => _ContainerCardTState();
}

class _ContainerCardTState extends State<ContainerCardT> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrganizationScreen(orgName: widget.lists,desc: widget.desc,cat: widget.cat, orgT:  widget.orgT,)),
            );
        },
        child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                         image: DecorationImage(image: NetworkImage('https://i.ibb.co/wBz2F5S/Getty-Images-626891352-99af025cafaf4e69a76cb8af44140201.webp',),fit: BoxFit.cover),
                    ),
                    width: 360,
            
                  
                    child: Container(
                       decoration: BoxDecoration(
                         color: Color.fromARGB(120, 55, 71, 79),
                        borderRadius: BorderRadius.circular(20),
                      ),
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
                          Flexible(child: Text( widget.lists , textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white))),
                         
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}