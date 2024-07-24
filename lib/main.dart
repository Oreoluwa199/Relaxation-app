import 'package:flutter/material.dart';
import 'package:peppermintapp/page/nextpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Relaxation App',
        ),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Image(
                width: 400,
                height: 400,
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://media.istockphoto.com/id/1402835350/photo/pensive-relaxed-african-american-woman-reading-a-book-at-home-drinking-coffee-sitting-on-the.jpg?s=612x612&w=0&k=20&c=aw9R68ENkPNqEQqQKcPqIlwAefRSQnymCifEjKd-4aE=',
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Relax and achieve greater peace of mind',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to the next page on Apple button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NextPage()),
                    );
                  },
                  icon:
                      const Icon(Icons.apple), // Replace with your desired icon
                  label: const Text(
                    'Continue with Apple',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, // Background color
                      onPrimary: Colors.white, // Text color
                      minimumSize: const Size(180, 50), // Button size
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                  height:
                      10), // Spacer between the Apple button and the new row of buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action to be performed on Google button press
                    },
                    icon: const Icon(Icons.mail), // Replace with Google icon
                    label: const Text('Google'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey, // Background color
                      onPrimary: Colors.white, // Text color
                      minimumSize: const Size(120, 40), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Border radius here
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Spacer between the Google and Email buttons
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action to be performed on Email button press
                    },
                    icon: const Icon(Icons.email), // Replace with Email icon
                    label: const Text('Email'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey, // Background color
                      onPrimary: Colors.white, // Text color
                      minimumSize: const Size(100, 20), // Button size
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Border radius here
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 20), // Spacer between the row of buttons and the text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Have an account?',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(width: 5), // Spacer between the texts
                  Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
      ),
    ));
  }
}
