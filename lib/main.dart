import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //Allows the Avatar to move freely in the row
            mainAxisSize: MainAxisSize.min,
            //put the avatar at center of the row
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //push the avatar down
              SizedBox(
                height: 200,
                width: double.infinity,
              ),

              CircleAvatar(
                radius: 50.0,
                backgroundImage: ExactAssetImage('images/TL.jpg'),
                backgroundColor: Colors.transparent,
              ),

              Text(
                'Device_Particle',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
