import 'package:expense_tracker/widgets/expense.dart';
import 'package:expense_tracker/widgets/expense_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// print('Total Amount: $totalAmount');
// int totalAmount = expenseList.map((expense) => expense.amount).reduce((value, element) => value + element);

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final expenseTitleController = TextEditingController();
  final expenseDescriptionController = TextEditingController();
  final expenseAmountController = TextEditingController();
  final formatter = DateFormat.yMd();
  FocusNode titleFocusNode = FocusNode();
  FocusNode descriptionFocusNode = FocusNode();
  FocusNode amountFocusNode = FocusNode();
  List<Expense> expenseList = [];
  String greetingText = "Morning";
  int currenthour = DateTime.now().hour;
  DateTime? selectedDate;
  DateTime? tempSelectedDate;
  @override
  void dispose() {
    expenseTitleController.dispose();
    expenseDescriptionController.dispose();
    expenseAmountController.dispose();
    super.dispose();
  }

  void submitExpense() {
    setState(() {
      expenseList.add(Expense(
        expenseTitle: expenseTitleController.text,
        expenseDescription: expenseDescriptionController.text,
        expenseAmount: int.parse(expenseAmountController.text),
      ));
      expenseTitleController.clear();
      expenseAmountController.clear();
      expenseDescriptionController.clear();
      tempSelectedDate = selectedDate;
      selectedDate = null;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (currenthour >= 12 && currenthour <= 18) {
      greetingText = "Afternoon";
    } else if (currenthour > 18) {
      greetingText = "Evening";
    }
    int totalAmount = 0;
    for (Expense expense in expenseList) {
      totalAmount += expense.expenseAmount;
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
                            Text(
                              '₹$totalAmount',
                              style: const TextStyle(
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
                  height: 50,
                ),
                expenseList.isEmpty
                    ? const Center(
                        child: Text(
                          'Start Tracking Your Expenses \n By Clicking The (+) Icon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      )
                    : ExpenseWidget(
                        expenseList: expenseList,
                        totalAmount: totalAmount,
                        selectedDate: tempSelectedDate!,
                      ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          height: 50,
          surfaceTintColor: Colors.transparent,
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
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return StatefulBuilder(builder: (context, setState) {
                  void datePicker() async {
                    final now = DateTime.now();
                    final firstDate =
                        DateTime(now.year - 1, now.month, now.day);
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: firstDate,
                      lastDate: now,
                    );
                    setState(() {
                      selectedDate = pickedDate;
                    });
                  }

                  return SizedBox(
                    height: 750,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Add New Expense',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: expenseTitleController,
                            focusNode: titleFocusNode,
                            maxLength: 15,
                            decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 151, 86)),
                              ),
                              // floatingLabelStyle: TextStyle(color: Colors.green),
                              // focusColor: Colors.greenAccent,
                              labelText: 'Enter Expense',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: titleFocusNode.hasFocus
                                    ? Colors.black54
                                    : Colors.black87,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: expenseDescriptionController,
                            focusNode: descriptionFocusNode,
                            maxLength: 25,
                            decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 151, 86)),
                              ),
                              labelText: 'Enter Description',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: descriptionFocusNode.hasFocus
                                    ? Colors.black54
                                    : Colors.black87,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 150,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  focusNode: amountFocusNode,
                                  controller: expenseAmountController,
                                  decoration: InputDecoration(
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 255, 151, 86)),
                                    ),
                                    labelText: 'Enter Amount',
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: amountFocusNode.hasFocus
                                          ? Colors.black54
                                          : Colors.black87,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  datePicker();
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      selectedDate == null
                                          ? 'Select Date'
                                          : formatter.format(selectedDate!),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black87),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(Icons.calendar_month),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                submitExpense();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 151, 86),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: const Text(
                                'Save',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
