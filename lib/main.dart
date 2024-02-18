
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  

  String avatarImage = 'assets/van-orang.jpg';

  void pictureSelect(String titleText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titleText),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text("Choose from Gallery"),
                onTap: () {
                  // Implement functionality to choose image from gallery
                  Navigator.pop(context); // Close the dialog
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text("Take a Photo"),
                onTap: () {
                  // Implement functionality to take a photo
                  Navigator.pop(context); // Close the dialog
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue[900],
          appBar: AppBar(
            toolbarHeight: 30,
            title: const Text(
              "Profolio",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue[800],
          ),
          body: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  const SizedBox(height: 180,),
                  GestureDetector(
                    onTap: () {pictureSelect("Change Background");},
                    child: Container(
                    height: 120,
                    decoration: 
                      BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(avatarImage), fit: BoxFit.fill
                        )
                      ),
                    ),
                  ),

                  Positioned(
                    top: 50,
                    child: GestureDetector(
                      onTap: () {pictureSelect("Change Avatar");
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage(avatarImage),
                        radius: 50,
                        ),
                    )
                    )
                ],
                
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name')
                ],
              )
            ],
          )),
    );
  }
}
