import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> users = [
    {'name': 'Aimal khan', 'Batch': 'Batch' '21'},
    {'name': 'M.Ahsan khan','Batch': 'Batch' '23'},
    {'name': 'Ashar khan', 'Batch': 'Batch' '23'},
    {'name': 'Umair khan', 'Batch': 'Batch' '24'},
    {'name': 'Ayoob khan', 'Batch': 'Batch' '20'},
    {'name': 'Aimal khan', 'Batch': 'Batch' '22'},
    {'name': 'Awais khan', 'Batch': 'Batch' '25'},
    {'name': 'Aimal khan', 'Batch': 'Batch' '27'},
    {'name': 'M.Ahsan khan','Batch': 'Batch' '24'},
    {'name': 'Ashar khan', 'Batch': 'Batch' '21'},
    {'name': 'Umair khan', 'Batch': 'Batch' '28'},
    {'name': 'Ayoob khan', 'Batch': 'Batch' '21'},
    {'name': 'Aimal khan', 'Batch': 'Batch' '22'},
    {'name': 'Awais khan', 'Batch': 'Batch' '20'},
    {'name': 'Aqib', 'Batch': '20'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 152, 236),
        title: const Text('Mapping Lists'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final userData = users[index];
          return ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text(userData['name'] ?? ''),
            subtitle: Text(userData['Batch'] ?? ''), // Corrected 'Batch' to 'Reg'
          );
        },
      ),
    );
  }
}