import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
// import 'package:agrochemicalsellers/screens/seller_list_screen.dart';

 
 class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 136, 221, 213),
      appBar: AppBar(
        title: const Text('Agrotrust'),
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/images/agrochemicals2.jpg'),
          fit: BoxFit.cover,
        ),

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
                    MaterialPageRoute(builder: (context) => const SellerListScreen(sellers: [],)),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}

class SellerListScreen extends StatelessWidget {
  final List<Seller> sellers;

  const SellerListScreen({super.key, required this.sellers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 146, 206, 200),
      appBar: AppBar(
        title: const Text('Sellers'),
      ),
      body: ListView.builder(
        itemCount: sellers.length,
        itemBuilder: (context, index) {
          final seller = sellers[index];
          return ListTile(
            leading: Image.asset(seller.image),
            title: Text(seller.name),
            subtitle: Text(seller.address),
            trailing: Text('${seller.rating}'),
          );
        },
      ),
    );
  }
}
  



 class Sellers {
  static final List<Seller> _sellers = [
    Seller(
      name: 'ABC Agrochemicals Ltd.',
      image: 'assets/images/agro1.jpg',
      address: 'KAMPALA',
      rating: 4.5,
      products: ['Insecticides', 'Fungicides', 'Herbicides'],
    ),
    Seller(
      name: 'DEF Agrochemicals Ltd.',
      image: 'assets/images/agro2.jpg',
      address: 'MUKONO',
      rating: 3.8,
      products: ['Fungicides', 'Herbicides'],
    ),
    Seller(
      name: 'GHI Agrochemicals Ltd.',
      image: 'assets/images/agro3.jpg',
      address: 'MASAKA',
      rating: 4.2,
      products: ['Insecticides', 'Herbicides'],
    ),
    // Add more Seller objects here
    Seller(
      name: 'JKL Agrochemicals Ltd.',
      image: 'assets/images/agro4.jpg',
      address: 'WAKISO',
      rating: 4.1,
      products: ['Fungicides', 'Herbicides'],
    ),
  ];

  static List<Seller> getSellers() {
    return _sellers;
  }
}
class Seller {
  final String name; // Name of the seller
  final String image; // URL or path to the seller's image
  final String address; // Address of the seller
  final double rating; // Average rating of the seller (out of 5.0)
  final List<String> products; // List of products the seller sells

  Seller({
    required this.name,
    required this.image,
    required this.address,
    required this.rating,
    required this.products,
  });
}

 
