import 'package:flutter/material.dart';

class WhatsAppUser {
  String name;
  String imagePath;
  String recentMessage;
  String time;
  IconData icons;
  WhatsAppUser(
      {required this.name,
      required this.imagePath,
      required this.recentMessage,
      required this.time,
      required this.icons});
}

List whatsappUsers = [
  WhatsAppUser(
    name: "Naveen",
    imagePath: "assets/images/man1.jpg",
    recentMessage: "Hello",
    time: "3.41 PM",
    icons: Icons.done_all,
  ),
  WhatsAppUser(
    name: "+986746362",
    imagePath: "assets/images/women1.jpg",
    recentMessage: "Hi",
    time: "Today",
    icons: Icons.done_all,
  ),
  WhatsAppUser(
    name: "Sahajada",
    imagePath: "assets/images/man2.jpg",
    recentMessage: "How are you?",
    time: "2.30 PM",
    icons: Icons.done,
  ),
  WhatsAppUser(
    name: "Khorshed",
    imagePath: "assets/images/man3.jpg",
    recentMessage: "Hy dear...",
    time: "Tomorrow",
    icons: Icons.done_all,
  ),
  WhatsAppUser(
    name: "Sabrina",
    imagePath: "assets/images/women2.jpg",
    recentMessage: "Photo",
    time: "Monday",
    icons: Icons.image,
  ),
  WhatsAppUser(
    name: "Anika",
    imagePath: "assets/images/women3.jpg",
    recentMessage: "PXL_2124113.jpg",
    time: "9.10 AM",
    icons: Icons.file_copy,
  ),
  WhatsAppUser(
    name: "Redwan",
    imagePath: "assets/images/man4.jpg",
    recentMessage: "class8.7z",
    time: "11/8/24",
    icons: Icons.file_copy,
  ),
  WhatsAppUser(
    name: "Naveen",
    imagePath: "assets/images/women4.jpg",
    recentMessage: "Voice call",
    time: "11/5/24",
    icons: Icons.call_missed_outgoing,
  ),
];
