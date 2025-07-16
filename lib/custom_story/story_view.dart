import 'package:flutter/material.dart';

class LeftImageDotTextTile extends StatelessWidget {
  final String mainText;
  final String subText;
  final String imageUrl;
  final Color dotColor;

  const LeftImageDotTextTile({
    super.key,
    required this.mainText,
    required this.subText,
    required this.imageUrl,
    this.dotColor = Colors.green,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 4,
        //     offset: Offset(0, 2),
        //   )
        // ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left Side: Circle Image
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 4),
                Text(
                  subText,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
          // Right Side: Dot
          Container(
            width: 16,
            height: 14,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.done,
              color: Colors.white,
              size: 12,
            ),
          ),
        ],
      ),
    );
  }
}