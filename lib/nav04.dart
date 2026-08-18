import 'package:flutter/material.dart';

class nav04 extends StatefulWidget {
  const nav04({super.key});

  @override
  State<nav04> createState() => _nav04State();
}

class _nav04State extends State<nav04> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('กล่องข้อความ'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'ทั้งหมด'),
                Tab(text: 'รออ่าน'),
                Tab(text: 'สำคัญ'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('ทั้งหมด')),
              Center(child: Text('รออ่าน')),
              Center(child: Text('สำคัญ')),
            ],
          ),
        ),
      ),
    );
  }
}