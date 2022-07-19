import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  
final List<Meal> favouriteMeals;

FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {

if(favouriteMeals.isEmpty){
  return Center(child: Text('Hello'));

}

    return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
            duration: favouriteMeals[index].duration,
            imageUrl: favouriteMeals[index].imageUrl,
            title: favouriteMeals[index].title,
          );
        },
        itemCount: favouriteMeals.length,
      );
    
  }
}