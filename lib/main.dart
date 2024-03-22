import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> users = [
    {
      "id": 1,
      "firstName": "Terry",
      "lastName": "Medhurst",
      "email": "atuny0@sohu.com",
      "image": "https://robohash.org/Terry.png?set=set4",
    },
    {
      "id": 2,
      "firstName": "Sheldon",
      "lastName": "Quigley",
      "email": "hbingley1@plala.or.jp",
      "image": "https://robohash.org/Sheldon.png?set=set4",
    },
    {
      "id": 3,
      "firstName": "Terrill",
      "lastName": "Hills",
      "email": "rshawe2@51.la",
      "image": "https://robohash.org/Terrill.png?set=set4",
    },
    {
      "id": 4,
      "firstName": "Miles",
      "lastName": "Cummerata",
      "email": "yraigatt3@nature.com",
      "image": "https://robohash.org/Miles.png?set=set4",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user['image']),
            ),
            title: Text("${user['firstName']} ${user['lastName']}"),
            trailing: Text('10:30 AM'),
          );
        },
      ),
    );
  }
}
