import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:messenger/messnger_screen/messnger_view.dart';
import 'package:messenger/people_screen/people_view.dart';
import 'package:messenger/telegram_screen/telegram_View.dart';

import '../custom_bottombar/bottom_bar.dart';
import '../custom_story/story_view.dart';
import '../newclass.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> profileImages = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAhc2sA1fSuRObc0eJqSZXUSiYu71Gde_gp5CprgTqH9dBpJHDwY5rRZ21BZOk_2-0i4s&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRueDEdqRVQeZ2p-uK_CGRzjqD0xT8V1D-uwXZ1GPYzI70Zugub7eaQYRqNg7oDrl2JyWM&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZc20CxH0-6SJQhjNrAP_itCbYUFptyl2zR_3X1ZJ2FRjSZdl2nBnCvfPwyqJBbhzEqDA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd7BU7ZZCx9rh3YagByCY8neM9tZsvAodTq7b_un_n9J7cOv27gJctQ9TE1JIIDzzIUMk&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCI0E5En7tNIkRP3IFnQAPsyPQ0uCdRCzzl16a8xmG5WZf2NCSxDkbWkI4_tCDT_uJqz0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTygvpqqCE2BrSgKX-q8jJzai89YccQXxdO491aHZ14uiv1-w0lCEKxtJasHssB4xkKS4Q&usqp=CAU',
  ];

  final List<String> name = [
    'Add Story',
    'Ali',
    'Sara',
    'Zara',
    'Umar',
    'Hamza',
  ];

  int selectedIndex = 0;

  final List<Widget> pages = [
    Center(child: Text('TelegramView')),
    Center(child: Text('MessengerView')),
    Center(child: Text('PeopleView')),
  ];

  void onTap(int index) {
    Widget page;

    switch (index) {
      case 0:
        page = MessengerView();
        break;
      case 1:
        page = PeopleView();
        break;
      case 2:
        page = TelegramView();
        break;
      default:
        return; // Optional: Do nothing if index is out of range
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // BuildContext? get context => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [

   CircleAvatar(
     backgroundColor: Colors.grey.shade100,
      child:
        IconButton(
        onPressed: () {},
        icon: Icon(Icons.camera_alt_rounded, color: Colors.black,size: 20 ,)),
        ),
          SizedBox(width: 19),
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child:
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.border_color_rounded, color: Colors.black,size: 20,))
          ),
        SizedBox(width: 20,)
        ],

        leading:
        Padding(padding: EdgeInsets.all(12),
        child:CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8gD5qbpR76B2GM0KE4CrMuapMJZJ3Auppm9Z57wAMqooZUKHdczXio-XeAcg6bHFVN0E&usqp=CAU'),
        ),
        ),

        title: Text(
          'Chats',
          style:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(11),

        child: Column(
          children: [
            // Search bar
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      labelText: 'Search',labelStyle:TextStyle(color: Colors.grey),
                      isDense: true,  // height chhota karta hai
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8), // vertical padding kam karo
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


                  // borderRadius: BorderRadius.circular(16),
                //       ),

                //     // style: TextStyle(color: Colors.black),

                 ),
              ),
            ),

            // Horizontal profile row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: index == 3 || index == 5
                                      ? Colors.green
                                      : Colors.transparent,
                                  width: 3,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 24,
                                backgroundImage: index == 0
                                    ? null
                                    : NetworkImage(profileImages[index]),
                                child: index == 0
                                    ? IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add,
                                      size: 28, color: Colors.black38),
                                )
                                    : null,
                              ),
                            ),
                            if (index == 2 || index == 1 || index == 4)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    border:
                                    Border.all(color: Colors.white, width: 2),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          name[index],
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            // Expanded(
            //   child: SlidableAutoCloseBehavior(
            //     child: SingleChildScrollView(
            //       padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            //       child: Column(
            //         children: [
            //           // 1 - Zara Khan
            //           Slidable(
            //             key: ValueKey('zara'),
            //             startActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.red,
            //                   icon: Icons.delete,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.notifications,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.dehaze,
            //                 ),
            //               ],
            //             ),
            //             endActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.blue,
            //                   icon: Icons.camera_alt,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.call,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.videocam,
            //                 ),
            //               ],
            //             ),
            //             child: LeftImageDotTextTile(
            //               imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd7BU7ZZCx9rh3YagByCY8neM9tZsvAodTq7b_un_n9J7cOv27gJctQ9TE1JIIDzzIUMk&usqp=CAU',
            //               mainText: "Zara Khan",
            //               subText: 'You: Or kam kaisa chala hai ap ka? 12:00 AM',
            //               dotColor: Colors.green,
            //             ),
            //           ),
            //
            //           // 2 - Umar Javad
            //           Slidable(
            //             key: ValueKey('umar'),
            //             startActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.red,
            //                   icon: Icons.delete,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.notifications,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.dehaze,
            //                 ),
            //               ],
            //             ),
            //             endActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.blue,
            //                   icon: Icons.camera_alt,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.call,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.videocam,
            //                 ),
            //               ],
            //             ),
            //             child: LeftImageDotTextTile(
            //               imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCI0E5En7tNIkRP3IFnQAPsyPQ0uCdRCzzl16a8xmG5WZf2NCSxDkbWkI4_tCDT_uJqz0&usqp=CAU',
            //               mainText: "Umar Javad",
            //               subText: 'You: What is your name? 6:20 AM',
            //               dotColor: Colors.grey,
            //             ),
            //           ),
            //
            //           // 3 - Ayesha Malik
            //           Slidable(
            //             key: ValueKey('ayesha'),
            //             startActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.red,
            //                   icon: Icons.delete,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.notifications,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.dehaze,
            //                 ),
            //               ],
            //             ),
            //             endActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.blue,
            //                   icon: Icons.camera_alt,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.call,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.videocam,
            //                 ),
            //               ],
            //             ),
            //             child: LeftImageDotTextTile(
            //               imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxmYxLHEZhXhtWX4vR1CuL4gNBlqNG-9qDwA&s',
            //               mainText: "Ayesha Malik",
            //               subText: 'You: I’ll call you later. 7:45 AM',
            //               dotColor: Colors.green,
            //             ),
            //           ),
            //
            //           // 4 - Ahmed Raza
            //           Slidable(
            //             key: ValueKey('ahmed'),
            //             startActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.red,
            //                   icon: Icons.delete,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.notifications,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.dehaze,
            //                 ),
            //               ],
            //             ),
            //             endActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.blue,
            //                   icon: Icons.camera_alt,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.call,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.videocam,
            //                 ),
            //               ],
            //             ),
            //             child: LeftImageDotTextTile(
            //               imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTXjVi8l3EBM-Ol7BhLIMGlYNtXS5nY672C2o7Btm9hF4J6H0GFKuR0LNVNe8mIjrj9hE&usqp=CAU',
            //               mainText: "Ahmed Raza",
            //               subText: 'You: Meeting at 2 PM.',
            //               dotColor: Colors.grey,
            //             ),
            //           ),
            //
            //           // 5 - Sana Tariq
            //           Slidable(
            //             key: ValueKey('sana'),
            //             startActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.red,
            //                   icon: Icons.delete,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.notifications,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.dehaze,
            //                 ),
            //               ],
            //             ),
            //             endActionPane: ActionPane(
            //               motion: const ScrollMotion(),
            //               children: [
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.blue,
            //                   icon: Icons.camera_alt,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.call,
            //                 ),
            //                 SlidableAction(
            //                   onPressed: (_) {},
            //                   backgroundColor: Colors.grey.shade50,
            //                   icon: Icons.videocam,
            //                 ),
            //               ],
            //             ),
            //             child: LeftImageDotTextTile(
            //               imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZc20CxH0-6SJQhjNrAP_itCbYUFptyl2zR_3X1ZJ2FRjSZdl2nBnCvfPwyqJBbhzEqDA&usqp=CAU',
            //               mainText: "Sana Tariq",
            //               subText: 'You: Sure, see you then. 11:10 AM',
            //               dotColor: Colors.green,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: SlidableAutoCloseBehavior(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  itemCount: chatUsers.length,
                  itemBuilder: (context, index) {
                    final user = chatUsers[index];

                    return Slidable(
                      key: ValueKey(user.id),
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.delete, color: Colors.white,size: 18),
                            ),
                          ),
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(Icons.notifications, color: Colors.black,size: 18),
                            ),
                          ),
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(Icons.dehaze, color: Colors.black,size: 18),
                            ),
                          ),
                        ],
                      ),
                      endActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.camera_alt, color: Colors.white,size: 18),
                            ),
                          ),
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(Icons.call, color: Colors.black,size: 18,),
                            ),
                          ),
                          CustomSlidableAction(
                            onPressed: (_) {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              child: Icon(Icons.videocam, color: Colors.black,size: 18,),
                            ),
                          ),
                        ],
                      ),
                      child: LeftImageDotTextTile(
                        imageUrl: user.imageUrl,
                        mainText: user.name,
                        subText: user.message,
                        dotColor: user.dotColor,
                      ),
                    );
                  },
                ),
              ),
            )

          ]
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: selectedIndex,
        onTap: onTap,
      ),

      );
  }

  // void setState(Null Function() param0) {}
}
