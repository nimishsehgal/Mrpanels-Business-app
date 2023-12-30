// lamination.dart

import 'package:flutter/material.dart';

class LaminationPage extends StatelessWidget {
  const LaminationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 55, 75),
        title: Text('Lamination',
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pvc.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: LaminationOptions(),
      ),
    );
  }
}

class LaminationOptions extends StatelessWidget {
  const LaminationOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LaminationOptionButton('One-side Laminated'),
        SizedBox(height: 65),
        LaminationOptionButton('Both-side laminated'),
        SizedBox(height: 65),
        LaminationOptionButton('Both-side Different Colors'),
      ],
    );
  }
}

class LaminationOptionButton extends StatelessWidget {
  final String option;

  LaminationOptionButton(this.option);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle the selection of the lamination type
        // You can navigate to another page, perform an action, etc.
        // For simplicity, let's print the selected option for now.
        print('Selected Lamination: $option');
      },
      child: Text(option,
        style: TextStyle(fontSize: 40),),
    );
  }
}
