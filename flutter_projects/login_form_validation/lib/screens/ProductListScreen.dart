import 'package:flutter/material.dart';

const _primary = Color(0xFF34D3A0);
const _onPrimary = Color(0xFF06251B);
const _background = Color(0xFF0E1815);
const _surface = Color(0xFF13241F);
const _border = Color(0xFF2B4A40);
const _text = Color(0xFFE6F5EF);

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});
  Widget buildCard(
    BuildContext context,
    String image,
    String name,
    String price,
  ) {
    return Card(
      color: _surface,
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
              child: Image.asset(image, fit: BoxFit.contain),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
            child: Text(
              name,
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
              price,
              style: const TextStyle(color: _primary, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$name added to cart'),
                    behavior: SnackBarBehavior.floating,
                    duration: const Duration(seconds: 2),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _primary,
                foregroundColor: _onPrimary,
              ),
              child: const Text('Add to cart'),
            ),
          ),
        ],
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
        title: const Text('Sports Store'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.68,
        padding: const EdgeInsets.all(12),
        children: [
          buildCard(context, 'assets/images/shoes.jpg', 'Football Shoes', 'Rs. 3,500'),
          buildCard(context, 'assets/images/hardball.jpg', 'Cricket Hardball', 'Rs. 8,900'),
          buildCard(context, 'assets/images/gloves.jpg', 'Boxing Gloves', 'Rs. 4,200'),
          buildCard(context, 'assets/images/jersey.jpg', 'Team Jersey', 'Rs. 2,800'),
          buildCard(context, 'assets/images/bat.jpg', 'Cricket Bat', 'Rs. 1,500'),
          buildCard(context, 'assets/images/net.jpg', 'Football Net', 'Rs. 900'),
          buildCard(context, 'assets/images/redShoes.jpg', 'Football Shoes', 'Rs. 1,200'),
          buildCard(context, 'assets/images/golfBall.jpg', 'Golf Ball', 'Rs. 3,900'),
        ],
      ),
    );
  }
}