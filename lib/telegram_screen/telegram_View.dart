
import 'package:flutter/material.dart';

class TelegramView extends StatefulWidget {
  const TelegramView({super.key});

  @override
  State<TelegramView> createState() => _TelegramViewState();
}

class _TelegramViewState extends State<TelegramView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.center,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // actions: [
        //   CircleAvatar(
        //     backgroundColor: Colors.grey.shade100,
        //     child:
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.messenger, color: Colors.black,size: 20,)),
        //   ),
        //   SizedBox(width: 7),
        //   CircleAvatar(
        //     backgroundColor: Colors.grey.shade100,
        //     child:
        //     IconButton(
        //         onPressed: () {},
        //         icon: Icon(Icons.person_add, color: Colors.black,size: 20
        //           ,)),
        //   ),
        // ],
        leading:
        Padding(padding: EdgeInsets.all(8),
          child:CircleAvatar(
            // radius: 60,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8gD5qbpR76B2GM0KE4CrMuapMJZJ3Auppm9Z57wAMqooZUKHdczXio-XeAcg6bHFVN0E&usqp=CAU'),
          ),
        ),
        title: Text(
          'Discover',
          style:
          TextStyle(color: Colors.black,fontSize: 30  ,fontWeight: FontWeight.w900),
        ),
      ),
      body:
          Padding(padding: EdgeInsets.all(11),
            child:
 Column(children: [
  Padding(padding: EdgeInsets.all(16),
    child:
    Container(
      width: double.infinity,
      height: 50,
      child: Center(
          child:TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade100,
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              labelText: 'Search',labelStyle:TextStyle(color: Colors.grey),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.grey, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
            ),
          )
      ),
    ),
  ),
   TextButton(onPressed: (){},
    child:Text('ForYou',style: TextStyle(color: Colors.green,fontSize: 12),),)
],)

          )

    );
  }
}

