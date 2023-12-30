// Board.dart

import 'package:flutter/material.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 13, 55, 75),
        title: Text('Board',
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
            image: AssetImage('assets/mdf.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BoardOptions(),
      ),
    );
  }
}

class BoardOptions extends StatelessWidget {
  const BoardOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BoardOptionButton('MDF'),
        SizedBox(height: 60),
        BoardOptionButton('BAGASSE'),
        SizedBox(height: 60),
        BoardOptionButton('PARTICLE'),
        SizedBox(height: 60),
        BoardOptionButton('Both-side Different h'),
      ],
    );
  }
}

class BoardOptionButton extends StatelessWidget {
  final String option;

  BoardOptionButton(this.option);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle the selection of the lamination type
        // You can navigate to another page, perform an action, etc.
        // For simplicity, let's print the selected option for now.
        print('Selected Board: $option');
      },
      child: Text(option,
        style: TextStyle(fontSize: 40),),
    );
  }
}
