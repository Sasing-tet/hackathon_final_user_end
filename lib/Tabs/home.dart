// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:home/Widgets/containers.dart';

import '../Screens/home_page.dart';

import '../Widgets/containerst.dart';

class Homie extends StatelessWidget {
  const Homie({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: categories(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Non-profit Organizations",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(
                  height: 15,
                ),
                Containerz(),
                const SizedBox(
                  height: 25,
                ),
                Text("Donation groups",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                const SizedBox(
                  height: 15,
                ),
                ContainerzT(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            categoryContainer("Children and Youth"),
            categoryContainer("Educational"),
            categoryContainer("Environmental"),
            categoryContainer(" Healthcare"),
            categoryContainer("Animal welfare"),
            categoryContainer("Disaster Relief"),
            categoryContainer("Human Rights"),
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFF5C77FF),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
