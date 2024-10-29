import 'package:flutter/material.dart';
import 'routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC), // Soft off-white background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Welcome!",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Subtitle with welcome text
            Text(
              "Choose an option to get started",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 20),

            // Grid of options with icons and labels
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,
                children: [
                  _buildOptionCard(
                    context,
                    label: "Upload Photo",
                    icon: Icons.upload_file,
                    route: Routes.uploadPhoto,
                    color: Color(0xFF4F46E5),
                  ),
                  _buildOptionCard(
                    context,
                    label: "Try-On",
                    icon: Icons.checkroom,
                    route: Routes.tryOn,
                    color: Color(0xFF10B981),
                  ),
                  _buildOptionCard(
                    context,
                    label: "Image Library",
                    icon: Icons.photo_library,
                    route: Routes.imageLibrary,
                    color: Color(0xFFF97316),
                  ),
                  _buildOptionCard(
                    context,
                    label: "Saved Try-Ons",
                    icon: Icons.bookmark,
                    route: Routes.savedTryOns,
                    color: Color(0xFF3B82F6),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Large "Continue" button at the bottom
            ElevatedButton(
              onPressed: () {
                // Define what happens when the button is clicked
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6366F1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to create option cards with icons and labels
  Widget _buildOptionCard(
      BuildContext context, {
        required String label,
        required IconData icon,
        required String route,
        required Color color,
      }) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 8,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color.withOpacity(0.1),
              child: Icon(
                icon,
                color: color,
                size: 28,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
