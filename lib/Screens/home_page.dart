import 'package:flutter/material.dart';
import 'package:home/Tabs/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
 
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: const Size.fromHeight(200),
          child: Column(
            children: [
               TextField(        
            decoration: InputDecoration(
              hintText: 'Search...',
              // Add a clear button to the search bar
              suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {},
              ),
              prefixIcon: IconButton(
          autofocus: true,
          icon: const Icon(Icons.search, color: Colors.grey,),
          onPressed: () {},
              ),
              border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
            ))), 
    
            const TabBar(tabs: [
              Tab(icon: Icon(Icons.abc),),
              Tab(icon: Icon(Icons.other_houses),),
            ])
    
    
            ],
            
          )),
          
    
          title: Row(
            children: const [
              Text('Org',style: TextStyle(
                color: Colors.red
              ),),
              Text('.ganized')
            ],
          ),
    
          leading: const Icon(Icons.calendar_month_rounded),
          actions: [
             const Icon(Icons.settings)
          ]
    
    
        ),


        body: TabBarView(children: [
          Homie(),
        ]),
      
      ),
    );
  }
}