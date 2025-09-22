import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profileBar(IconData icon) {
  return Container(
    padding: const EdgeInsets.all(3),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
    decoration: const BoxDecoration(
        color: Color(0xFFf8f6f1),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: ListTile(
      trailing: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 20,
        child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(icon, color: Colors.white)),
      ),
      title: const Text('Sohid Chowdhury'),
      subtitle: const Text(
        'Top Level',
        style: TextStyle(fontFamily: 'Kenia', fontSize: 12),
      ),
      leading: const CircleAvatar(
        backgroundImage: AssetImage('lib/asset/image/profile.png'),
        radius: 26,
      ),
    ),
  );
}
