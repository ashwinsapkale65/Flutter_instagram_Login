import 'package:flutter/material.dart';

import 'package:insta_demo/presentation/widgets/widgets.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => homestate();
}

class homestate extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return  Center(child: MainScreen(context, 0.5));
          } else {
            return  MainScreen(context, 1);
          }
        })
        
         ),
    );
  }





}