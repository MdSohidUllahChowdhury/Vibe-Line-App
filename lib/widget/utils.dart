import 'package:flutter/material.dart';
import 'package:vibe_line/widget/writer_card.dart';

class Utils {
  static seeMore(String name, IconData iconName, void Function()? path) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        IconButton(
            onPressed: path,
            icon: Icon(
              iconName,
              color: Colors.white,
              size: 30,
            )),
      ],
    );
  }

  static listOFWriter() {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            wirterCard('lib/asset/image/pic2.png', 'Dalai Lama',
                const Color(0xFFa7c957)),
            wirterCard(
              'lib/asset/image/pic3.png',
              'Monica',
              const Color(0xFFff99c8),
            ),
            wirterCard(
              'lib/asset/image/pic5.png',
              '– Paulo Coelho',
              const Color(0xFFe4c1f9),
            ),
            wirterCard(
              'lib/asset/image/pic1.png',
              'Winston Churchill',
              const Color(0xFFf7ede2),
            ),
            wirterCard(
              'lib/asset/image/pic4.png',
              '– Nelson Mandela',
              const Color(0xFFe0b1cb),
            ),
            wirterCard(
              'lib/asset/image/pic6.png',
              '– Paulo Coelho',
              const Color(0xFF231942),
            ),
            wirterCard(
              'lib/asset/image/pic7.png',
              '– Roy T. Bennett',
              const Color(0xFF2a9d8f),
            ),
          ],
        ),
      ),
    );
  }
}
