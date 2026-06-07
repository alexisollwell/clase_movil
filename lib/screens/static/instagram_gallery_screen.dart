import 'package:flutter/material.dart';
import 'package:clase_movil/components/instagram_profile_header.dart';
import 'package:clase_movil/components/instagram_post_detail.dart';

class InstagramGalleryScreen extends StatefulWidget {
  const InstagramGalleryScreen({super.key});

  @override
  State<InstagramGalleryScreen> createState() => _InstagramGalleryScreenState();
}

class _InstagramGalleryScreenState extends State<InstagramGalleryScreen> {
  final List<String> images = [
    'assets/images/landscape_photography_tips_featured_image.jpg.webp',
    'assets/images/60a6e2b0776d1d6735fce5ae7dc9b175.jpg',
    'assets/images/GettyImages-2253869134.jpg',
    'assets/images/b80378993da7282e58b35bdd3adbce89.jpg',
    'assets/images/selva-tropical-hermosa-en-el-sendero-de-ka-del-ang-36703721.jpg.webp',
    'assets/images/person-stands-on-rocks-poking-out-of-the-ocean-shoreline.jpg',
    'assets/images/360_F_431647519_usrbQ8Z983hTYe8zgA7t1XVc5fEtqcpa.jpg',
    'assets/images/images.jpeg',
    'assets/images/landscape_photography_tips_featured_image.jpg.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('username', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            InstagramProfileHeader(postCount: images.length),
            
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Developer', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Flutter Developer | Mobile App Creator\nLearning static elements in Flutter 🚀'),
                  SizedBox(height: 10),
                ],
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black, side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {},
                      child: const Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black, side: BorderSide(color: Colors.grey.shade300),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {},
                      child: const Text('Share Profile', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            
            
            const Divider(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(icon: const Icon(Icons.grid_on), onPressed: () {}),
                IconButton(icon: const Icon(Icons.video_library_outlined, color: Colors.grey), onPressed: () {}),
                IconButton(icon: const Icon(Icons.person_pin_outlined, color: Colors.grey), onPressed: () {}),
              ],
            ),
            
            
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InstagramPostDetail(
                          imagePath: images[index],
                          index: index,
                        ),
                      ));
                    },
                    child: Hero(
                      tag: 'image_$index',
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
