import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_resturant/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle _dmSerifDisplay = GoogleFonts.dmSerifDisplay(
      color: Colors.white,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),

            // Shop name
            Text(
              "HERO SUSHI",
              style: _dmSerifDisplay.copyWith(
                fontSize: 28,
              ),
            ),

            const SizedBox(height: 25),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/main.png'),
            ),

            const SizedBox(height: 25),

            // Title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: _dmSerifDisplay.copyWith(
                fontSize: 44,
              ),
            ),

            const SizedBox(height: 10),

            // Subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),
            // Get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                //go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
