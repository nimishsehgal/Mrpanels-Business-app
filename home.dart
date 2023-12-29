import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 13, 55, 75),
      body: Center(child: Text
      (
        'MR Panels',
        style: TextStyle(fontSize: 100,color: Colors.white, 
        fontWeight: FontWeight.bold, ) ,
      textAlign: TextAlign.center,
      ),
    
      ),
    );
  }
}