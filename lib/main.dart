import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: Column(
            //Allows the Avatar to move freely in the column
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //push the avatar down

              const CircleAvatar(
                radius: 50.0,
                backgroundImage: ExactAssetImage('images/TL.jpg'),
                backgroundColor: Colors.transparent,
              ),
              const Text(
                'Device_Particle',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade200,
                  fontFamily: 'Source Code Pro',
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                 child: ListTile(
                   leading: Icon(Icons.phone,
                       color: Colors.blueGrey.shade900,
                   ),
                   title: const Text('+12 783 883 4400',
                       style: TextStyle(
                           color: Colors.black45,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                           fontFamily: 'Open Sans'
                       ),
                 ),
                ),
               ),
              ),//phone
              Card(
                color: Colors.white,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.email,
                      color: Colors.blueGrey.shade900,
                    ),
                    title: const Text('QLab@gmail.com',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Open Sans'
                    ),
                  ),
                ),
              ),
              ), //email
            ],
          ),
        ),
      ),
    );
  }
}
