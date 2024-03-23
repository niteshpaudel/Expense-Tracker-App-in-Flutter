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
  final int expenseAmount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.deepPurple.withOpacity(0.8),
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
                style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
