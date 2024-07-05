import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {'name': 'Product 1', 'price': 10},
    {'name': 'Product 2', 'price': 20},
    {'name': 'Product 3', 'price': 15},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Implement logout logic
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(products[index]['name']),
            subtitle: Text('Price: \$${products[index]['price']}'),
            onTap: () {
              // Navigate to product detail screen or implement action
            },
          );
        },
      ),
    );
  }
}
