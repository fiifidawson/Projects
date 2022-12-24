import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kasa_app/pages/calls_page.dart';
import 'package:kasa_app/pages/contacts_page.dart';
import 'package:kasa_app/pages/messages_page.dart';
import 'package:kasa_app/pages/notifications_page.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: _BottomNavigationBar(),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      top: false,
      bottom: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavigationBarItem(),
          _NavigationBarItem(),
          _NavigationBarItem(),
          _NavigationBarItem(),
        ],
      ));
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('item');
  }
}