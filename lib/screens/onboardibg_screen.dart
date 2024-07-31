import 'package:flutter/material.dart';
import 'package:travel_online_booking/screens/onboarding_screen1.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 530, // Adjust height as needed
              child: Column(
                children: <Widget>[
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                          top: 140,
                        ), // Space between items
                        child: Container(
                          width: double
                              .infinity, // Make the container take full width
                          height: double.infinity,
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
                    options: CarouselOptions(
                      autoPlay: false,
                      height: 500,
                      enlargeCenterPage: true,
                      viewportFraction: 1.0, // Full width for each item
                      aspectRatio: 16/10,
                      initialPage: 2,
                      
                    ),
                  ),
                ],
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
