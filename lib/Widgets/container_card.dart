import 'package:flutter/material.dart';
import 'package:home/Screens/org_page.dart';


class ContainerCard extends StatefulWidget {
   ContainerCard({super.key, required this.lists,required this.desc,required this.cat,required this.orgT});

   final String lists;
   final String desc;
    final String cat;
    final String orgT;

  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrganizationScreen(orgName: widget.lists,desc: widget.desc,cat: widget.cat, orgT:  widget.orgT,)),
            );
      },
      child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://i.ibb.co/wBz2F5S/Getty-Images-626891352-99af025cafaf4e69a76cb8af44140201.webp',),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                      
                  ),
                  width: 170,
                  height: 250,
                
                  child: Container(
                   
                    decoration: BoxDecoration(
                       color: Color.fromARGB(120, 55, 71, 79),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0),
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
                            child: Text( widget.lists , textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}