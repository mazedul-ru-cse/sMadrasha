import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.1,
          children: [
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.person_add_alt_1, size: 40),
                      SizedBox(height: 8),
                      Text('Admission', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.event_available, size: 40),
                      SizedBox(height: 8),
                      Text('Attendance', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.bed, size: 40),
                      SizedBox(height: 8),
                      Text('Hostel', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.account_balance_wallet, size: 40),
                      SizedBox(height: 8),
                      Text('Fee', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.more_horiz, size: 40),
                      SizedBox(height: 8),
                      Text('Others', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
