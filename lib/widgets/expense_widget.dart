import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseWidget extends StatefulWidget {
  const ExpenseWidget({
    required this.expenseList,
    required this.totalAmount,
    required this.selectedDate,
    super.key,
  });
  final List<Widget> expenseList;
  final int totalAmount;
  final DateTime selectedDate;

  // String? currentDay;
  @override
  State<ExpenseWidget> createState() => _ExpenseWidgetState();
}

class _ExpenseWidgetState extends State<ExpenseWidget> {
  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat.EEEE();
    final String currentDay = formatter.format(widget.selectedDate);
    List<Widget> expenseContainerList = [
      ExpenseContainer(currentDay: currentDay, widget: widget)
    ];
    expenseContainerList.add(
      ExpenseContainer(currentDay: currentDay, widget: widget),
    );
    // switch (widget.selectedDate.weekday) {
    //   case 1:
    //     widget.currentDay = "Saturday";
    //     break;
    //   case 2:
    //     widget.currentDay = "Monday";
    //     break;
    //   case 3:
    //     widget.currentDay = "Tuesday";
    //     break;
    //   case 4:
    //     widget.currentDay = "Wednesday";
    //     break;
    //   case 5:
    //     widget.currentDay = "Thursday";
    //     break;
    //   case 6:
    //     widget.currentDay = "Friday";
    //     break;
    //   case 7:
    //     widget.currentDay = "Sunday";
    //     break;
    // }
    // return ExpenseContainer(currentDay: currentDay, widget: widget);
    // return expenseContainerList[0];
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: expenseContainerList.length,
        itemBuilder: ((context, index) => expenseContainerList[index]));
  }
}

class ExpenseContainer extends StatelessWidget {
  const ExpenseContainer({
    super.key,
    required this.currentDay,
    required this.widget,
  });

  final String currentDay;
  final ExpenseWidget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Container(
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
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    "$currentDay, ${widget.selectedDate.day}",
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Text(
                    '₹${widget.totalAmount}',
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
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
      ),
    );
  }
}
