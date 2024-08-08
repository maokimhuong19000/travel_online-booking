import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Column(
        children: [
        Padding(padding: EdgeInsets.only(top: 150,left: 25),
              child: SizedBox(
                 height: 50,
                 child: Column(
                    children: [
                      Text(
                        'Hello Home Screen',
                      ),
                    ],
                 ),
              ),
        ),
        ],
      ),
    );
  }
}