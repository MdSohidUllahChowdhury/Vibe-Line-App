import 'package:flutter/material.dart';
import 'package:vibe_line/widget/profile_bar.dart';
import 'package:vibe_line/widget/quots_card.dart';
import 'package:vibe_line/model/qutos_list.dart';

class QuotsDatails extends StatelessWidget {
  QuotsDatails({super.key});
  final listDataCalling = quotsMap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343a40),
      body: Column(
        children: [
          const SizedBox(height: 30),
          profileBar(Icons.keyboard_double_arrow_up),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              itemCount: listDataCalling.length,
              itemBuilder: (context, index) {
                final data = listDataCalling[index];
                return quotsCard(
                    context, data.cardBgColor, data.writerName, data.theQuot);
              },
            ),
          )
        ],
      ),
    );
  }
}
