import 'package:flutter/material.dart';
import 'package:shoes/model/product.dart';
import 'package:shoes/presentation/home/screens/product_detail_screen.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({required this.products, super.key});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular Shoes',
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1A1B1C),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'See all',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 335,
          height: 201,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailScreen(product : product)));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Container(
                      width: 157,
                      height: 201,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 12, left: 16, right: 4),
                            child: Image.asset(products[index].image),
                          ),
                          SizedBox(
                            width: 145,
                            height: 80,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SizedBox(
                                    width: 90,
                                    height: 68,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'BEST SELLER',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xFF5B9EE1),
                                              fontWeight: FontWeight.w300),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          products[index].name,
                                          style:const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF1A1B1C),
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '\$${products[index].price.toString()}',
                                          style:const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF1A1B1C),
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    width: 34,
                                    height: 35.5,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      ),
                                      color: Colors.blue,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
