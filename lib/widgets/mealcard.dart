import 'package:flutter/material.dart';
import 'package:training_diet/model/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({@required this.meal});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0, bottom: 20.0),
      // margin: const EdgeInsets.symmetric(horizontal: 10.0),
      // padding: EdgeInsets.all(10.0),

      child: Material(
        // borderRadius: BorderRadius.all(Radius.circular(20.0)),
        borderRadius: BorderRadius.circular(20.0),
        elevation: 4.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
                child: Image.asset(
                  meal.imagePath,
                  width: 150.0,
                  fit: BoxFit.fitHeight,
                ),
              ),
              // child: Text('Adeel'),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Column(
                children: [
                  Text(meal.name),
                  Text(meal.mealTime),
                  Text(meal.kiloCaloriesBurnt),
                  Text(meal.timeTaken),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
