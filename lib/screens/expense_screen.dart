import 'package:expense_tracker/widgets/expense.dart';
import 'package:expense_tracker/widgets/expense_widget.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  List<Widget> expenseList = [
    const Expense(
      expenseTitle: 'Grocery',
      expenseDescription: 'Bought carrots and peas',
      expenseAmount: 179,
    ),
    const Expense(
      expenseTitle: 'Grocery',
      expenseDescription: 'Bought carrots and peas',
      expenseAmount: 179,
    ),
  ];
  String greetingText = "Morning";
  int currenthour = DateTime.now().hour;
  @override
  Widget build(BuildContext context) {
    final expenseTitleController = TextEditingController();
    final expenseDescriptionController = TextEditingController();
    final expenseAmountController = TextEditingController();
    if (currenthour >= 12 && currenthour <= 18) {
      greetingText = "Afternoon";
    } else if (currenthour > 18) {
      greetingText = "Evening";
    }
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/user.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          greetingText,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black54),
                        ),
                        const Text(
                          'Nitesh Paudel',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      width: 130,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 241, 254),
                          borderRadius: BorderRadius.circular(4)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'This month',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 95, 166, 237),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total expense',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '₹5000',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 22,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: const Text(
                                    '+589',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  'than last month',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -20,
                      right: -55.0,
                      child: SizedBox(
                        width: 225.0,
                        height: 225.0,
                        child: Image.asset(
                          'assets/images/savings-and-investment.png',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Expense List',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                ExpenseWidget(expenseList: expenseList),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.5,
                color: Color.fromARGB(255, 210, 216, 253),
              ),
            ),
          ),
          child: const BottomAppBar(
            height: 50,
            surfaceTintColor: Colors.transparent,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 151, 86),
          elevation: 0,
          splashColor: const Color.fromARGB(255, 255, 172, 120),
          highlightElevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        TextField(
                          controller: expenseTitleController,
                        ),
                        TextField(
                          controller: expenseDescriptionController,
                        ),
                        TextField(
                          controller: expenseAmountController,
                        ),
                      ],
                    ),
                  );
                });
            setState(() {
              expenseList.add(Expense(
                expenseTitle: expenseTitleController.text,
                expenseDescription: expenseDescriptionController.text,
                expenseAmount: expenseAmountController as int,
              ));
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
