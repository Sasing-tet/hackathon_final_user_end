import 'package:flutter/material.dart';
import 'package:home/data.dart';

import '../Widgets/container_cardt.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: volunteeringOrgs.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          onDismissed: (DismissDirection dynamic) {
            setState(() {
              volunteeringOrgs.removeAt(index);
            });
          },
          secondaryBackground: Container(
            color: Colors.red,
            child: Center(
              child: Text(
                'Not Interested',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          background: Container(),
          key: UniqueKey(),
          direction: DismissDirection.endToStart,
          child: ContainerCardT(
            lists: volunteeringOrgs[index]['organizationName'].toString(),
            desc: volunteeringOrgs[index]['description'].toString(),
            cat: volunteeringOrgs[index]['category'].toString(),
            orgT: volunteeringOrgs[index]['organizationType'].toString(),
          ),
        );
      },
    );
  }
}
