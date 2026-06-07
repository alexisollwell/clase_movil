import 'package:flutter/material.dart';

class InstagramProfileHeader extends StatelessWidget {
  final int postCount;

  const InstagramProfileHeader({super.key, required this.postCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300, width: 2),
            ),
            padding: const EdgeInsets.all(2),
            child: const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/profile-picture.jpeg'),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(postCount.toString(), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const Text('Posts', style: const TextStyle(fontSize: 14)),
                  ],
                ),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('1.2M', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Followers', style: TextStyle(fontSize: 14)),
                  ],
                ),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('150', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Following', style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
