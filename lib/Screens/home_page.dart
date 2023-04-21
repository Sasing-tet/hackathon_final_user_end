import 'package:flutter/material.dart';
import 'package:home/Tabs/discover.dart';
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
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(155, 228, 226, 226),
                                hintText: 'Search',
                                contentPadding: EdgeInsets.all(0),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'MaterialIcons-Regular',
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                                // Add a clear button to the search bar
                                suffixIcon: Icon(
                                  Icons.mic,
                                  color: Colors.black,
                                  size: 25,
                                ),
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none))),
                      ),
                    ),
                    const TabBar(tabs: [
                      Tab(
                        icon: Text(
                          "Home",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        icon: Text(
                          "Discover",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ])
                  ],
                )),
            title: Row(
              children: const [
                Text(
                  'Org',
                  style: TextStyle(
                      color: Color(0xFF5C77FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  '.ganized',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
            titleSpacing: -2,
            leading: const Icon(
              Icons.edit_calendar_rounded,
              color: Colors.black,
              size: 32,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ]),
        body: TabBarView(children: [Homie(), Discover()]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF5C77FF),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
          ],
        ),
      ),
    );
  }
}
