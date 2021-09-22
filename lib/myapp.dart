import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(color: Colors.green[200]),
              ),
              ListTile(
                title: Text('Home'),
              ),
              ListTile(
                title: Text('Settings'),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Center(child: Text('Whatsapp')),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.settings),
            )
          ],
          backgroundColor: Colors.green[900],
          bottom: TabBar(tabs: [
            Tab(
              text: 'Home',
            ),
            Tab(
              text: 'Story',
            ),
            Tab(
              text: 'Call',
            )
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Chats(),
                  Chats(
                    label: 'Sumit',
                  ),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                  Chats(),
                ],
              ),
            ),
            Column(
              children: [Text('2nd')],
            ),
            Column(
              children: [Text('3rd')],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Add your onPressed code here!
          },
          label: const Text('Approve'),
          icon: const Icon(Icons.thumb_up),
          backgroundColor: Colors.green[600],
        ),
      ),
    ));
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key, this.label = "User"}) : super(key: key);
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/1177/1177568.png',
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' $label',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('Hello brother are you there'),
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
        ],
      ),
    );
  }
}
