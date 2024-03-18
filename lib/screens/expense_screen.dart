import 'package:flutter/material.dart';

class ExpenseScreen extends StatelessWidget {
  const ExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Morning',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        Text(
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
                      top: -30,
                      right: -75.0,
                      child: SizedBox(
                        width: 250.0,
                        height: 250.0,
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 210, 216, 253),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Tuesday, 12',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              '-₹16943',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 210, 216, 253),
                          thickness: 1.5,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
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
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shop',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy new clothes',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹1549',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.phone_android,
                                color: Colors.brown.withOpacity(0.8),
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Electronic',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy new S24 ultra',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹15999',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.filter_drama_sharp,
                                color: Colors.green.withOpacity(0.8),
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy groceries',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹349',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5,
                      color: const Color.fromARGB(255, 210, 216, 253),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Tuesday, 12',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Spacer(),
                            Text(
                              '-₹16943',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 210, 216, 253),
                          thickness: 1.5,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
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
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Shop',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy new clothes',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹1549',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.phone_android,
                                color: Colors.brown.withOpacity(0.8),
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Electronic',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy new S24 ultra',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹15999',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.filter_drama_sharp,
                                color: Colors.green.withOpacity(0.8),
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Groceries',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Buy groceries',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              '-₹349',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
