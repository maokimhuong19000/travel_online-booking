import 'package:flutter/material.dart';
import 'package:travel_online_booking/screens/onboarding_screen1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment:
        //     MainAxisAlignment.spaceBetween, // Space between items
        children: [   
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 530, // Adjust height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10, // Number of items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                      top: 140,
                      ), // Space between items
                    child: Container(
                      width: 220,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/img1.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Spacer(),
          const SizedBox(
            width: 200,
            // height: 70,
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Text(
                'Let\'s make your dream vacation',
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 118, 53),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            width: 400,
            height: 100,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ac purus tortor. Sed sollicitudin arcu a tristique consequat.',
                style: TextStyle(
                  color: Color.fromARGB(255, 51, 118, 53),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 20.0), // Padding at the bottom
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NextScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                minimumSize: const Size(350, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8), // Adjusted border radius
                  ),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

