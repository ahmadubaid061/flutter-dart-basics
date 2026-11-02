import 'package:flutter/material.dart';

const _primary = Color(0xFF34D3A0);
const _onPrimary = Color(0xFF06251B);
const _background = Color(0xFF0E1815);
const _surface = Color(0xFF13241F);
const _border = Color(0xFF2B4A40);
const _text = Color(0xFFE6F5EF);
const _textMuted = Color(0xFF7FA698);

class Product {
  final String name;
  final String price;
  final String image;

  const Product({required this.name, required this.price, required this.image});
}

const List<Product> _products = [
  Product(
    name: 'Match Football',
    price: 'Rs. 3,500',
    image: 'assets/images/football.png',
  ),
  Product(
    name: 'Football Boots',
    price: 'Rs. 8,900',
    image: 'assets/images/boots.png',
  ),
  Product(
    name: 'Goalkeeper Gloves',
    price: 'Rs. 4,200',
    image: 'assets/images/gloves.png',
  ),
  Product(
    name: 'Team Jersey',
    price: 'Rs. 2,800',
    image: 'assets/images/jersey.png',
  ),
  Product(
    name: 'Shin Guards',
    price: 'Rs. 1,500',
    image: 'assets/images/shin_guards.png',
  ),
  Product(
    name: 'Football Socks',
    price: 'Rs. 900',
    image: 'assets/images/socks.png',
  ),
  Product(
    name: 'Training Cones',
    price: 'Rs. 1,200',
    image: 'assets/images/cones.png',
  ),
  Product(
    name: 'Sports Bag',
    price: 'Rs. 3,900',
    image: 'assets/images/bag.png',
  ),
];

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  void _addToCart(BuildContext context, Product product) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            '${product.name} added to cart',
            style: const TextStyle(color: _text),
          ),
          backgroundColor: _surface,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _background,
      appBar: AppBar(
        backgroundColor: _surface,
        foregroundColor: _text,
        elevation: 0,
        title: const Text('Football Store'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final product = _products[index];
          return _ProductCard(
            product: product,
            onAddToCart: () => _addToCart(context, product),
          );
        },
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const _ProductCard({required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _surface,
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: _border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: _background,
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                product.image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Center(
                  child: Icon(Icons.sports_soccer, size: 48, color: _textMuted),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
            child: Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: _text,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              product.price,
              style: const TextStyle(
                color: _primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: onAddToCart,
              style: ElevatedButton.styleFrom(
                backgroundColor: _primary,
                foregroundColor: _onPrimary,
                elevation: 0,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Add to cart',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
