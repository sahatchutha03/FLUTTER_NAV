import 'package:flutter/material.dart';

class nav05 extends StatefulWidget {
  const nav05({super.key});

  @override
  State<nav05> createState() => _nav05State();
}

class _nav05State extends State<nav05> {
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          if (didPop) return;
          final leave = await showDialog<bool>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('ทิ้งการแก้ไข?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('อยู่ต่อ'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('ออก'),
                ),
              ],
            ),
          );
          if (leave == true && context.mounted) {
            Navigator.pop(context);
          }
        },
        child: const EditForm(),
      ),
    );
  }
}

class EditForm extends StatelessWidget {
  const EditForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'หน้าแก้ไขข้อมูล',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              labelText: 'กรอกชื่อของคุณ',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}