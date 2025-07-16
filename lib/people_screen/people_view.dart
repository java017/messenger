import 'package:flutter/material.dart';

import '../custom_bottombar/bottom_bar.dart';
import '../messnger_screen/messnger_view.dart';
import '../peopel_custom/container_view.dart';
import '../telegram_screen/telegram_View.dart';

class PeopleView extends StatefulWidget {
  const PeopleView({super.key});

  @override
  State<PeopleView> createState() => _PeopleViewState();
}

class _PeopleViewState extends State<PeopleView> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Center(child: Text('TelegramView')),
    Center(child: Text('MessengerView')),
    Center(child: Text('PeopleView')),
  ];


  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelegramView()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessengerView()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PeopleView()),
        );
        break;
      default:
        break;
    }
  }
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
                icon: Icon(Icons.messenger, color: Colors.black,size: 20,)),
          ),
          SizedBox(width: 7),
         CircleAvatar(
           backgroundColor: Colors.grey.shade100,
           child:
           IconButton(
               onPressed: () {},
               icon: Icon(Icons.person_add, color: Colors.black,size: 20
                 ,)),
         ),
        ],
        leading:
        Padding(padding: EdgeInsets.all(8),
          child:CircleAvatar(
            // radius: 60,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8gD5qbpR76B2GM0KE4CrMuapMJZJ3Auppm9Z57wAMqooZUKHdczXio-XeAcg6bHFVN0E&usqp=CAU'),
          ),
        ),
        title: Text(
          'People',
          style:
          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body:
        Padding(padding:EdgeInsets.all(12),
        child:
              Column(
              children: [
                Padding(padding: EdgeInsets.all(12),
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

                Container(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      // Circular Image
                      CircleAvatar(backgroundColor: Colors.grey.shade100,
                        radius: 30,
                        backgroundImage: NetworkImage(''
                        ),
                        child: IconButton(onPressed: (){},
                        icon: Icon(Icons.add,color: Colors.black,size: 30,)),
                      ),

                      SizedBox(width: 16),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Your Story',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Add to your story',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                ImageTextIconTile(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS06zcMEQC_TMAoEYS9o5KTFceoOk3oWgaGdsVrb7XZGXMPE5EfTv-kUFM4iF578yop8QA&usqp=CAU',
                  title: 'Shamza Tariq',
                  time: '20 min.',
                  onIconPressed: () {
                    print('Icon clicked!');
                  },
                  icon: Icons.waving_hand_sharp,
                ),
              Container(
               width: 350,
               height:1,
               color: Colors.grey.shade300,
              ),
                ImageTextIconTile(
                  imageUrl: 'https://res.cloudinary.com/jerrick/image/upload/d_642250b563292b35f27461a7.png,f_jpg,q_auto,w_720/67338e73953975001dd4b461.png',
                  title: 'Tariq  Azam',
                  showOnlineStatus: true,
                  onIconPressed: () {
                    print('Icon clicked!');
                  },
                  icon: Icons.waving_hand_sharp,
                ),
                Container(
                  width: 350,
                  height:1,
                  color: Colors.grey.shade300,
                ),
                ImageTextIconTile(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm1RjskwyLOsOxQSznwK3qH6Jz1Mq_1hIMFwPNs-uDW-AEhximIIC1Pcdj_uCU_uJJgDE&usqp=CAU',
                  title: 'Hassan Aslam',
                  time: '12 min.',
                  onIconPressed: () {
                    print('Icon clicked!');
                  },
                  icon: Icons.waving_hand_sharp,
                ),
                Container(
                  width: 350,
                  height:1,
                  color: Colors.grey.shade300,
                ),
                ImageTextIconTile(
                  imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZriy2D6JNGUGu2xRGDT45boy5xcNr86SgTmMKPMyUTgt7iFHNg-P3HMI8qVoZeH3q2lw&usqp=CAU',
                  title: 'Babar Hammad',
                  showOnlineStatus: true,
                  onIconPressed: () {
                    print('Icon clicked!');
                  },
                  icon: Icons.waving_hand_sharp, // optional
                ),
                // Container(
                //   width: 350,
                //   height:1,
                //   color: Colors.grey.shade300,
                // ),
                SizedBox(height: 45,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Padding(padding: EdgeInsets.all(10),
                   child:
                   Text('RECENTLY ACTIVE',style:TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,fontSize: 14),),
                   )
                  ],
                )
                ),
                ImageTextIconTile(
                 imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnKTNj3lUBsg6CcJI6QeLadXt20pYQk8J9OYSj21lrxKdpQtoRmlWRsSv3o-tZxl8cT18&usqp=CAU',                  title: 'Atif Alam',
                  time: '40 min.',
                  onIconPressed: () {
                    print('Icon clicked');
                  },
                ),

              ],
            ),

        ),

      bottomNavigationBar: CustomBottomBar(
        selectedIndex: selectedIndex,
        onTap: onTap,
      ),
    );
  }
}


