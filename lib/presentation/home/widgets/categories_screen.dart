import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes/model/categories.dart';

class CategoriesScreen extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onCategoriesSelected;

  const CategoriesScreen(
      {required this.selectedIndex,
      required this.onCategoriesSelected,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(
            left: index == 0 ? 0 : 16,
          ),
          child: ElevatedButton(
            onPressed: () {
              onCategoriesSelected(index);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: selectedIndex == index ? 10 : 7),
              minimumSize: const Size(0, 0),
              backgroundColor:
                  selectedIndex == index ? Colors.blue : Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: SvgPicture.asset(
                      categories[index].icon,
                      width: 25,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                if (selectedIndex == index)
                  const SizedBox(
                    width: 8,
                  ),
                if (selectedIndex == index)
                  Text(
                    categories[index].name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
