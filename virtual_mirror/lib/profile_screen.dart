import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blueAccent, // Consistent color scheme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding for layout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Profile Picture
            const Hero(
              tag: 'profile-pic', // Hero animation for transition
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://via.placeholder.com/150"),
              ),
            ),
            SizedBox(height: 20),
            // Animated User Name
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  "John Doe", // Placeholder for user's name
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                    fontFamily: 'Poppins',
                  ),
                  speed: Duration(milliseconds: 100),
                ),
              ],
              isRepeatingAnimation: false,
            ),
            SizedBox(height: 8),
            Text(
              "johndoe@example.com", // Placeholder for user's email
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 30),
            // Edit Profile Button with Glow Animation
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                shadowColor: Colors.blueAccent.withOpacity(0.5),
                elevation: 10,
              ),
              onPressed: () {
                // Handle edit profile action
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.edit, size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Edit Profile",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Delete Account Button with Bounce Effect
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                shadowColor: Colors.redAccent.withOpacity(0.5),
                elevation: 10,
              ),
              onPressed: () {
                // Handle delete account action
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.delete, size: 20),
                  SizedBox(width: 8),
                  Text(
                    "Delete Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
