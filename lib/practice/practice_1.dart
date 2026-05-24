import 'package:flutter/material.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    double circleSize = 150;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white
                ),
              ),
            ]
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height/2)- (circleSize/2),
            right: 0,
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Icon(Icons.arrow_downward, color: Colors.white),
              )
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height/2)- (circleSize/2),
            right: circleSize,
            child: Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Icon(Icons.arrow_upward, color: Colors.indigo),
              )
            ),
          )
        ]
      )
    );
  }
}