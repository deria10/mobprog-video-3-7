import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  SampleListView({super.key});
  final List colorCodes =[900, 800, 700, 600, 500, 400, 300, 200, 100];
  final List data = [
    {
      'photoUrl': 'https://plus.unsplash.com/premium_photo-1658527049634-15142565537a?q=80&w=1376&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Saras',
      'address': 'Jepara',
    },
    {
      'photoUrl': 'https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Raden Kumbara',
      'address': 'Semarang',
    },
    {
      'photoUrl': 'https://plus.unsplash.com/premium_photo-1669882305300-38b609862bee?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'name': 'Wawan',
      'address': 'Sleman',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Widget List View'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(data[index]['photoUrl']),
              title: Text(data[index]['name']),
              subtitle: Text(data[index]['address']),
              trailing: IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
              tileColor: Colors.grey[400],
            );
          },
          itemCount: data.length,
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 2,
              color: Colors.grey,
            );
          },
      )
    );
  }
}