import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Billify Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(right: size.width * 0.05, left: size.width * 0.05),
        color: Theme.of(context).scaffoldBackgroundColor, // Background color
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.1),

              // Logo
              Row(
                children: [
                  Container(
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 51, 28, 90),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: Image.asset(
                      'assets/images/image_logo.png',
                      scale: 10,
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.1),

              // Heading
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Get to know the movies that are currently in theaters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Subtitle
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Dare to look for that little thing that you want to see so much and enjoy it',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement App Store link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('GET IT ON\nGoogle Play'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement App Store link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('Download on the\nApp Store'),
                  ),
                ],
              ),

              // Image/Device Preview (Optional)
              Container(
                margin: EdgeInsets.only(
                    bottom: size.height * 0.1, top: size.height * 0.1),
                height: size.height * 0.8,
                child: Image.asset(
                    'assets/images/screenshot_app.png'), // Replace with your image
              ),
            ],
          ),
        ),
      ),
    );
  }
}
