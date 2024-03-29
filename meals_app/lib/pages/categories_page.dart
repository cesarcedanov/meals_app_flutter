import 'package:flutter/material.dart';
import '../organism/category_item.dart';
import '../dummy_data.dart';

class CategoriesPage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(
                  id: category.id,
                  title: category.title,
                  color: category.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 20,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
