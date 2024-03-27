import 'dart:math';

import 'package:flutter/material.dart';

class Expense extends StatelessWidget {
  const Expense({
    required this.expenseTitle,
    required this.expenseDescription,
    required this.expenseAmount,
    super.key,
  });
  final String expenseTitle;
  final String expenseDescription;
  final double? expenseAmount;
  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    final List<Color> randomColors = [
      Colors.orangeAccent.withOpacity(0.6),
      Colors.redAccent.withOpacity(0.6),
      Colors.greenAccent.withOpacity(0.6),
      Colors.purpleAccent.withOpacity(0.6),
      Colors.blueAccent.withOpacity(0.6),
      Colors.pinkAccent.withOpacity(0.6),
      Colors.amberAccent.withOpacity(0.6),
      Colors.cyanAccent.withOpacity(0.6),
    ];
    int selectColorIndex = random.nextInt(randomColors.length);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: randomColors[selectColorIndex],
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              // color: Colors.deepPurple.withOpacity(0.8),
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expenseTitle,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              Text(
                expenseDescription,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '-₹$expenseAmount',
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.redAccent),
          ),
        ],
      ),
    );
  }
}
