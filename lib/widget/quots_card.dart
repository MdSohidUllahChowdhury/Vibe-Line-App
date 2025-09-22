import 'package:flutter/material.dart';

Widget quotsCard(
  BuildContext context,
  Color cardColor,
  String name,
  String quot,
) {
  return Container(
    margin: const EdgeInsets.only(left: 8, right: 4, bottom: 6),
    padding: const EdgeInsets.symmetric(horizontal: 4),
    height: MediaQuery.sizeOf(context).height * .30,
    width: MediaQuery.sizeOf(context).width * .80,
    decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(26))),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          quot,
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Kenia',
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1),
        ),
        const Divider(
          height: 20,
          color: Color.fromARGB(198, 0, 0, 0),
          thickness: 6,
          radius: BorderRadius.all(Radius.circular(26)),
          endIndent: 130,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/asset/image/pic7.png'),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('lib/asset/image/pic6.png'),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('lib/asset/image/pic2.png'),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('lib/asset/image/pic5.png'),
            ),
          ],
        )
      ],
    ),
  );
}
