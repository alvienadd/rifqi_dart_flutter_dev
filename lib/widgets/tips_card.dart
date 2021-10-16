import 'package:flutter/material.dart';
import 'package:rifqi_dart_flutter_dev/theme.dart';

class TipsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(
        "assets/tips1.png",
        width: 80,
      ),
      SizedBox(
        width: 16,
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('City Guidelines', style: blackTextStyle.copyWith(fontSize: 18)),
        SizedBox(
          height: 4,
        ),
        Text('Updated 20 Apr', style: greyTextStyle),
      ]),
      Spacer(),
      IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: greyColor,
          ),
          onPressed: () {})
    ]);
  }
}
