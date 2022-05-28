import 'package:flutter/material.dart';
import 'package:trumeet/utils/colors.dart';

class MeetingOption extends StatelessWidget {
  const MeetingOption(
      {super.key,
      required this.text,
      required this.isMute,
      required this.onChange});

  final String text;
  final bool isMute;
  final Function(bool) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Switch.adaptive(
            value: isMute, onChanged: onChange) // adapts on iOS and Android
      ]),
    );
  }
}
