import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const routeName = 'notification-screen';

  @override
  Widget build(BuildContext context) {
    Logger().w('🚢 [NotificationScreen] build]');
    final myList = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
      'Item 6',
      'Item 7',
      'Item 8',
      'Item 9',
      'Item 10',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item'),
          );
        },
      ),
    );
  }
}
