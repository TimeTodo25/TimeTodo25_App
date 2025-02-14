import 'package:flutter/material.dart';
import 'd_day.dart';

class DDaySectionContainer extends StatelessWidget {
  const DDaySectionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 150),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: const DDaySection(
        kDayItemCount: 10,
        dateCountdown: 100,
      ),
    );
  }
}