import 'package:flutter/material.dart';

class ImageLibraryScreen extends StatelessWidget {
  final List<Item> items = [
    Item(name: "Dress", imageUrl: "https://via.placeholder.com/150"),
    Item(name: "Shirt", imageUrl: "https://via.placeholder.com/150"),
    Item(name: "Pants", imageUrl: "https://via.placeholder.com/150"),
    Item(name: "Hat", imageUrl: "https://via.placeholder.com/150"),
    Item(name: "Shoes", imageUrl: "https://via.placeholder.com/150"),
    Item(name: "Sunglasses", imageUrl: "https://via.placeholder.com/150"),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Library"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Increased padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Search Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Search Items',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true, // Background color for the search field
                fillColor: Colors.white, // White background for visibility
              ),
            ),
            SizedBox(height: 20), // Increased space between search and grid
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16, // Spacing between grid items
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7, // Adjusts the aspect ratio of the grid items
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ItemCard(item: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String imageUrl;

  Item({required this.name, required this.imageUrl});
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6, // Increased elevation for a stronger shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Rounded edges
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)), // Rounded top corners
            child: Image.network(
              item.imageUrl,
              height: 120, // Adjusted height for a better visual impact
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 12), // Space between image and text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent, // Matching color scheme
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
