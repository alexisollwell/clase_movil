import 'package:flutter/material.dart';

class InstagramPostDetail extends StatelessWidget {
  final String imagePath;
  final int index;

  const InstagramPostDetail({
    super.key,
    required this.imagePath,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile-picture.jpeg'),
            ),
            title: const Text('username', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.more_vert),
          ),
          Expanded(
            child: InteractiveViewer(
              child: Hero(
                tag: 'image_$index',
                child: Image.asset(imagePath, fit: BoxFit.contain),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
              IconButton(icon: const Icon(Icons.chat_bubble_outline), onPressed: () {}),
              IconButton(icon: const Icon(Icons.send), onPressed: () {}),
              const Spacer(),
              IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Liked by user and 1,234 others', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
