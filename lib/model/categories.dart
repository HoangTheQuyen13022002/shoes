import 'package:flutter_svg/flutter_svg.dart';

class Categories {
  Categories({
    required this.name,
    required this.icon,
  });

  final String name;

  final String icon;
}

final List<Categories> categories = [
  Categories(name: 'Nike', icon: 'assets/icons/logo_nike.svg'),
  Categories(name: 'Puma', icon: 'assets/icons/logo_puma.svg'),
  Categories(name: 'Under amor', icon: 'assets/icons/logo_under_armour.svg'),
  Categories(name: 'Adidas', icon: 'assets/icons/logo_adidas.svg'),
  Categories(name: 'Convert', icon: 'assets/icons/logo_converse.svg'),
];
