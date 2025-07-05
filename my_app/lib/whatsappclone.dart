// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'model/chat_data.dart';
import 'model/call_data.dart';

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF25D366)),
      ),
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color(0xFF075E54),
          actions: [
            Icon(Icons.camera_alt),
            SizedBox(width: 16),
            Icon(Icons.search),
            SizedBox(width: 16),
            Icon(Icons.more_vert),
            SizedBox(width: 8),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text(' Open Camera', style: TextStyle(fontSize: 18))),
            ChatsTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF25D366),
          child: Icon(Icons.chat),
          onPressed: () {},
        ),
      ),
    );
  }
}

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        final chat = chatList[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text(chat.name[0]),
          ),
          title: Text(chat.name),
          subtitle: Text(chat.message),
          trailing: Text(chat.time),
        );
      },
    );
  }
}

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Icon(Icons.add),
          ),
          title: Text('My Status'),
          subtitle: Text('Tap to add status update'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Recent updates', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(backgroundColor: Colors.green, child: Text('Z')),
          title: Text('Zoya'),
          subtitle: Text('Just now'),
        ),
      ],
    );
  }
}

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (context, index) {
        final contact = callList[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.teal,
            child: Text(contact.name[0]),
          ),
          title: Text(contact.name),
          subtitle: Text(index % 2 == 0 ? 'Incoming' : 'Outgoing'),
          trailing: Icon(
            index % 2 == 0 ? Icons.call_received : Icons.call_made,
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
