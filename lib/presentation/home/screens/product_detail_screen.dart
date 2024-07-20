import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/model/product.dart';
import 'package:shoes/presentation/widgets/appbar_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> size = ['38', '39', '40', '41', '42', '43', '44'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const AppbarScreen(
            iconStart: 'assets/icons/back.svg',
            iconEnd: 'assets/icons/cart.svg',
            contextAppbar: ContextAppbarprodutcdetail()),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: SizedBox(
            width: 254,
            height: 160,
            child: Image.asset(
              product.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        padding: const EdgeInsets.all(0),
        height: 505,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'BEST SELLER',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                              fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/heart.svg',
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      product.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 44),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      product.description,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                          fontSize: 14),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Colors',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1A1B1C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.5, right: 18.5),
              child: SizedBox(
                height: 94,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Size',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF1A1B1C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'EU',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1A1B1C),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'US',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1A1B1C),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  'UK',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF1A1B1C),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 45,
                      child: ListView.builder(
                          itemCount: size.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 13),
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[50],
                                ),
                                child: Center(
                                  child: Text(
                                    size[index],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 31),
              child: SizedBox(
                  height: 94,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Price',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '\$${product.price}',
                            style:const TextStyle(
                                fontSize: 20,
                                color: Color(0xFF1A1B1C),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 167,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          child: const Center(
                            child: Text(
                              'Add To Cart',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class ContextAppbarprodutcdetail extends StatelessWidget {
  const ContextAppbarprodutcdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Product Detail",
      style: TextStyle(
          fontSize: 16, color: Color(0xFF1A1B1C), fontWeight: FontWeight.w600),
    );
  }
}
