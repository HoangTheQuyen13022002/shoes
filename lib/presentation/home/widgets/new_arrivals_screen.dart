import 'package:flutter/material.dart';
import 'package:shoes/model/product.dart';
import 'package:shoes/presentation/home/screens/product_detail_screen.dart';

class NewArrivalsScreen extends StatelessWidget {
  const NewArrivalsScreen({
    required this.products,
    super.key,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 355,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xFF1A1B1C),
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 335,
            height: 120,
            child: PageView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(product: product),
                      ),
                    );
                  },
                  child: Container(
                    width: 335,
                    height: 120,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'BEST CHOICE',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xFF1A1B1C),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$${product.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xFF1A1B1C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 142,
                            height: 80,
                            child: Image.asset(
                              product.image,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
