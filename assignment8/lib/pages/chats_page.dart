import 'package:assignment8/widgets/whatsapp_user.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {},
          ),
          const SizedBox(width: 15.0),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const SizedBox(width: 15.0),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: whatsappUsers.length,
        itemBuilder: (context, index) {
          final item = whatsappUsers[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item.imagePath),
            ),
            title: Text(
              item.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(item.icons, size: 16, color: Colors.grey),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    item.recentMessage,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            trailing: Text(
              item.time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Define the action for the button here
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
    );
  }
}
