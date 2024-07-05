import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// import 'package:agrochemicalsellers/screens/seller_list_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmers App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Connect with trusted Agrochemical Sellers',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text(
                'View Sellers',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SellerListScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SellerListScreen extends StatefulWidget {
  const SellerListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SellerListScreenState createState() => _SellerListScreenState();
}

class _SellerListScreenState extends State<SellerListScreen> {
  List<Seller> sellers = [
    Seller(name: 'AgroChem Enterprises', location: 'Kampala', rating: 4.8),
    Seller(name: 'Growers LLC', location: 'Nairobi', rating: 4.5),
    Seller(name: 'Planters Inc', location: 'Kigali', rating: 4.2),
    Seller(name: 'Greenway Agro', location: 'Dar Es Salaam', rating: 4.0),
    Seller(name: 'CropKing Farms', location: 'Lusaka', rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trusted Agrochemical Sellers'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: sellers.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(sellers[index].name),
              subtitle: Text(sellers[index].location),
              trailing: Text('${sellers[index].rating}'),
            );
          },
        ),
      ),
    );
  }
}

class Seller {
  final String name;
  final String location;
  final double rating;

  Seller({required this.name, required this.location, required this.rating});
}
