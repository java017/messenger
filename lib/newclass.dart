import 'dart:ui';

import 'package:flutter/material.dart';

class ChatUser {
  final String id;
  final String name;
  final String message;
  final String imageUrl;
  final Color dotColor;

  ChatUser({
    required this.id,
    required this.name,
    required this.message,
    required this.imageUrl,
    required this.dotColor,
  });
}
final List<ChatUser> chatUsers = [
  ChatUser(
    id: 'zara',
    name: 'Zara Khan',
    message: 'You: Or kam kaisa chala hai ap ka? 12:00 AM',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRd7BU7ZZCx9rh3YagByCY8neM9tZsvAodTq7b_un_n9J7cOv27gJctQ9TE1JIIDzzIUMk&usqp=CAU',
    dotColor: Colors.green,
  ),
  ChatUser(
    id: 'umar',
    name: 'Umar Javad',
    message: 'You: What is your name? 6:20 AM',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCI0E5En7tNIkRP3IFnQAPsyPQ0uCdRCzzl16a8xmG5WZf2NCSxDkbWkI4_tCDT_uJqz0&usqp=CAU',
    dotColor: Colors.grey,
  ),
  ChatUser(
    id: 'ayesha',
    name: 'Ayesha Malik',
    message: 'You: I’ll call you later. 7:45 AM',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuPFiC6wGW-HxReQB1sUxeWhM8UTePvyuPJheZM1G7Nxcbu6ztvwqGfAjd2jbUGGKnvLs&usqp=CAU',
    dotColor: Colors.green,
  ),
  ChatUser(
    id: 'ahmed',
    name: 'Ahmed Raza',
    message: 'You: Meeting at 2 PM',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzWD1E3zMx8GMNVskoi5twAKUVGZNWP3Hy7ytjSkPbw-nrXCg9xdfOgdDwzt89Sl0f9Q&usqp=CAU',
    dotColor: Colors.grey,
  ),
  ChatUser(
    id: 'sana',
    name: 'Sana Tariq',
    message: 'You: Sure, see you then. 11:10 AM',
    imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzS9J6JCOhELBurbVbyJ7S_jd6hdDkg-1xfN-H2NO59wBeUqUx04YiPT-N9UsvTvkBkuk&usqp=CAU',
    dotColor: Colors.grey,
  ),
];
