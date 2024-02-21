import 'package:flutter/material.dart';

// I haven't implemented the functionality for selecting an image from gallery or the camera but the dependancy is there.

// Function to allow the user to upload media to the app
void selectMedia(BuildContext context, String titleText) {
  showDialog(
    context: context, // Context MUST be provided from the file it's called from
    builder: (context) => AlertDialog(
      title: Text(titleText),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Choose an image from gallery
          ListTile(
              leading: const Icon(Icons.photo),
              title: const Text("Choose Image"),
              onTap: () {}),
          // Use the user's camera to take a picture
          ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("Take Photo"),
              onTap: () {
                // ignore: avoid_print
                print("select image"); // this is not for production
              })
        ],
      ),
    ),
  );
}
