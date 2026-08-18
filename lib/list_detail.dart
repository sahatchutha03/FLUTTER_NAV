import 'package:flutter/material.dart';

class ListDetail extends StatefulWidget {
  const ListDetail({super.key});

  @override
  State<ListDetail> createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  final List<Product> products = const [
    Product(name: 'CD', price: '100'),
    Product(name: 'MODEL', price: '349'),
  ];

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List -> Detail')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(products[i].name),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailPage(product: products[i])),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(product.name)),
    body: Center(child: Text('฿${product.price}')),
  );
}

class Product {
  final String name;
  final String price;

  const Product({required this.name, required this.price});
}