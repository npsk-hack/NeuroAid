import 'package:flutter/material.dart';
import 'package:neuroaid/tabs/first.dart';
import 'package:neuroaid/tabs/second.dart';
import 'package:neuroaid/tabs/third.dart';


void main() {
  runApp(MaterialApp(
      // Title
      title: "NeuroAid",
      // Home
      home: MyHome()));
}


class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("NeuroAid"),
        // Set the background color of the App Bar
        backgroundColor: Colors.deepPurple,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[FirstTab(), SecondTab(), ThirdTab()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.deepPurple,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.pan_tool),
            ),
            Tab(
              icon: Icon(Icons.directions_walk),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}
