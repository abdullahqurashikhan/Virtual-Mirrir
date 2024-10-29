import 'package:flutter/material.dart';

class UploadPhotoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload/Select Photo")),
      body: Center(child: Text("Upload or Take a Picture")),
    );
  }
}
