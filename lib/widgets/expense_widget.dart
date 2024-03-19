import 'package:flutter/material.dart';

class ExpenseWidget extends StatefulWidget {
  const ExpenseWidget({required this.expenseList, super.key});
  final List<Widget> expenseList;
  @override
  State<ExpenseWidget> createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: const Color.fromARGB(255, 210, 216, 253),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                Text(
                  'Tuesday, 12',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  '-₹16943',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 210, 216, 253),
              thickness: 1.5,
            ),
            const SizedBox(
              height: 10,
            ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.expenseList.length,
                itemBuilder: (context, index) => widget.expenseList[index],
              ),
    
          ],
        ),
      ),
    );
  }
}
