import 'package:expense_tracker/screens/expense_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icons/logo.png',
                  width: 30,
                ),
                const Text(
                  'Expense Tracker',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset('assets/images/pie-chart.png'),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Easy way to track & monitor\nyour expense',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                  fontSize: 23,
                  letterSpacing: 0.5),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Save your money by manging your\nexpense right now',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ExpenseScreen()),);
          },
          backgroundColor: const Color.fromARGB(255, 255, 151, 86),
          elevation: 0,
          splashColor: const Color.fromARGB(255, 255, 172, 120),
          highlightElevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
