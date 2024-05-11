import 'package:flutter/material.dart';

class SampleImageCircle extends StatelessWidget {
  const SampleImageCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget Image'),
      ),
      body: Column(
       children: [
        Image.network('https://picsum.photos/200/150'),
        const CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://picsum.photos/200/150'),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            'https://picsum.photos/200/150',
            height: 100,
            width: 100,
            fit: BoxFit.fill,
            ),
        ),
        ClipOval(
          child: Image.network('https://picsum.photos/200/150',
          height: 100,
          width: 100,
          fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/200/150'),
              fit: BoxFit.fill,
            )
          ),
        )
       ],
      ),
    );
  }
}