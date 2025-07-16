import 'package:flutter/material.dart';

class ImageTextIconTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onIconPressed;
  final IconData icon;
  final bool showOnlineStatus;
  final String? time;

  const ImageTextIconTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.onIconPressed,
    this.showOnlineStatus = false,
    this.icon = Icons.waving_hand_sharp,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(imageUrl),
              ),

              // ✅ Online Status Dot
              if (showOnlineStatus)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),

              // ✅ Time Tag
              if (time != null)
                Positioned(
                  top: 28,
                  right: 0,
                  child: Container(
                    // width: 12,
                    height: 20,
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      time!,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(icon),
            onPressed: onIconPressed,
          ),
        ],
      ),
    );
  }
}
