import 'package:flutter/material.dart';
import 'package:home/Widgets/containers.dart';

import '../Widgets/category_container.dart';
import '../Widgets/containerst.dart';

class Homie  extends StatelessWidget {
  const Homie ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Column(
            children: [
                  const SizedBox(
                height: 10,
              ),
              Text('CATEGORIES',),
              const SizedBox(
                height: 10,
              ),
              categories(),
                  const SizedBox(
                height: 20,
              ),
              Text("Non-profit"),
                  const SizedBox(
                height: 15,
              ),
             Containerz(),
                  const SizedBox(
                height: 15,
              ),
              Text("Donation groups"),
                  const SizedBox(
                height: 15,
              ),
              ContainerzT(),
            ],
          )
        ],
      ),
    );
  }

Widget categories(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      child: Row(
      children: [
        CategoryContainer( text: "Education"),
        CategoryContainer( text: "Relief Operations"),
        CategoryContainer( text: "Sasing Amen"),
       CategoryContainer( text: " Amen"),
        CategoryContainer( text: "Rescue Operations"),
      ],
      ),
    ),);
}






}