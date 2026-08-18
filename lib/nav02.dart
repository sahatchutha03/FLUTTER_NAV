import 'package:flutter/material.dart';

class nav02 extends StatefulWidget {
  const nav02({super.key});

  @override
  State<nav02> createState() => _nav02State();
}

class _nav02State extends State<nav02> {
  String _city = 'ยังไม่เลือก';

  Future<void> _pick() async {
    final result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (_) => const CityPage()),
    );

    if (result != null && mounted) {
      setState(() => _city = result);
    }
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'คุณเลือก: $_city',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pick,
              child: const Text('กดเพื่อเลือกจังหวัด'),
            ),
          ],
        ),
      ),
    );
  }
}

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  final List<String> cities = const [
    'เชียงราย',
    'แม่ฮ่องสอน',
    'แพร่',
    'น่าน',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('รายชื่อจังหวัด')),

      body: ListView(
        children: cities
            .map(
              (c) => ListTile(
                title: Text(c),
                onTap: () => Navigator.pop(context, c),
              ),
            )
            .toList(),
      ),
    );
  }
}