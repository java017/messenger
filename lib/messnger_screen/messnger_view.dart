import 'package:flutter/material.dart';

import '../custom_bottombar/bottom_bar.dart';

class MessengerView extends StatefulWidget {
  const MessengerView({super.key});

  @override
  State<MessengerView> createState() => _MessengerViewState();
}

class _MessengerViewState extends State<MessengerView> {
  get selectedIndex => null;

  get onTap => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(padding: EdgeInsets.all(15),

      child:
      Container(
        width: 42,
        height: 65,
        color: Colors.deepOrangeAccent,
      ),

      ),
        bottomNavigationBar: CustomBottomBar(
          selectedIndex: selectedIndex,
          onTap: onTap,


          
      )
    );
  }
}
