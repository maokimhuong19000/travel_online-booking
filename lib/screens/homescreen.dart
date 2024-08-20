import 'package:flutter/material.dart';
import 'package:travel_online_booking/screens/notificationScreen.dart';
import 'package:travel_online_booking/screens/DestinationScreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String profileName =
        "Kim Huong"; // Replace with the actual profile name
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: CircleAvatar(
                radius: 20,
                // For full control over the image fitting, you can use backgroundImage like this:
                child: ClipOval(
                  child: Image.asset(
                    'assets/profiles/profile.jpg', // Replace with your image asset
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profileName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '''Hello, $profileName...''',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(179, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 20.0),
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Define where you want to navigate when this button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Destinationscreen()),
            );
          },
          child: const Text('Where do you want to go?'),
        ),
      ),
    );
  }
}
