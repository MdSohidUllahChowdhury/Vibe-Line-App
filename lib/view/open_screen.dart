import 'package:flutter/material.dart';
import 'package:vibe_line/widget/profile_bar.dart';
import 'package:vibe_line/widget/quots_card.dart';
import 'package:vibe_line/widget/utils.dart';
import 'package:vibe_line/model/qutos_list.dart';
import 'package:vibe_line/view/quots_datails.dart';
import 'package:get/get.dart';

class OpenPage extends StatelessWidget {
  OpenPage({super.key});

  final dataCalling = quotsMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343a40),
      body: Column(
        children: [
          const SizedBox(height: 30),
          profileBar(Icons.notifications),
          Utils.seeMore('  Popluer Quots', Icons.arrow_drop_down,
              () => Get.to(() => QuotsDatails())),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataCalling.length,
                  itemBuilder: (context, index) {
                    final data = dataCalling[index];
                    return quotsCard(context, data.cardBgColor, data.writerName,
                        data.theQuot);
                  })),
          Utils.seeMore('  Recent Uploades',
              Icons.keyboard_double_arrow_right_rounded, () {}),
          Utils.listOFWriter()
        ],
      ),
    );
  }
}
