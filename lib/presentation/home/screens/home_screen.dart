import 'package:flutter/material.dart';
import 'package:shoes/constants/constants.dart';
import 'package:shoes/model/product.dart';
import 'package:shoes/presentation/home/widgets/bottom_navigation_screen.dart';
import 'package:shoes/presentation/home/widgets/categories_screen.dart';
import 'package:shoes/presentation/home/widgets/new_arrivals_screen.dart';
import 'package:shoes/presentation/home/widgets/popular_screen.dart';
import 'package:shoes/presentation/home/widgets/search_screen.dart';
import 'package:shoes/presentation/widgets/appbar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<List<Product>> selectedCategories = [
    nike,
    puma,
    under,
    adidas,
    converse,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF707B81).withOpacity(0.2),
        surfaceTintColor: const Color(0xFF707B81).withOpacity(0.2),
        foregroundColor: const Color(0xFF707B81).withOpacity(0.2),
        shadowColor: const Color(0xFF707B81).withOpacity(0.2),
        title: const AppbarScreen(
          iconStart: 'assets/icons/menu.svg',
          iconEnd: 'assets/icons/cart.svg',
          contextAppbar: Text(''),
        ),
      ),
      body: Container(
        color: const Color(0xFF707B81).withOpacity(0.2),
        child: Center(
          child: Column(
            children: [
              // search
              const Padding(
                padding: EdgeInsets.only(top: 24),
                child: SizedBox(
                  width: 355,
                  height: 48,
                  child: SearchScreen(
                    hintText: "Looking for shoes",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              // categories
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: 355,
                  height: 44,
                  child: CategoriesScreen(
                    selectedIndex: selectedIndex,
                    onCategoriesSelected: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              // popular shoes
              SizedBox(
                width: 335,
                height: 241,
                child: PopularScreen(
                  products: selectedCategories[selectedIndex],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              NewArrivalsScreen(products: selectedCategories[selectedIndex],),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationScreen(),
    );
  }
}
