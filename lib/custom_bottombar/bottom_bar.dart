import 'package:flutter/material.dart';
import 'package:messenger/messnger_screen/messnger_view.dart';
import 'package:messenger/people_screen/people_view.dart';
import 'package:messenger/telegram_screen/telegram_View.dart';

class CustomBottomBar extends StatefulWidget {
  final Function(int) onTap;
  final int selectedIndex;

  const CustomBottomBar({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12,
              blurRadius: 4, offset: Offset(0,-2))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(Icons.messenger_outlined, 0, 'Messenger', color:Colors.grey ),
          _buildIcon(Icons.people, 1, 'People',color:Colors.blue),
          _buildIcon(Icons.telegram, 2, 'Telegram', color: Colors.grey),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index, String label, {required Color color}) {
    return GestureDetector(
      onTap: () {
        switch (index) {
          case 0:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MessengerView()));
            break;
          case 1:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PeopleView()));
            break;
          case 2:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => TelegramView()));
            break;
        }
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }

}