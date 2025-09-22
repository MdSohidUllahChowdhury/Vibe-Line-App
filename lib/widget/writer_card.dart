import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget wirterCard(String profilePic, String writerName, Color bgColor) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(30))),
    child: ListTile(
      trailing: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
          child: IconButton(
              onPressed: () {
                Get.snackbar(
                  'Love❤️',
                  'You Just Love Writer',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.black,
              ))),
      title: Text(writerName),
      titleTextStyle: const TextStyle(
        fontSize: 15,
      ),
      subtitle: const Text('Top Level'),
      subtitleTextStyle: const TextStyle(fontSize: 10, fontFamily: 'Kenia'),
      leading: CircleAvatar(
        backgroundImage: AssetImage(profilePic),
        radius: 26,
      ),
    ),
  );
}
