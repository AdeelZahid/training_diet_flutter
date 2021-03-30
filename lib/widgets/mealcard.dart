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
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  meal.imagePath,
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.fill,
                ),
              ),
              // child: Text('Adeel'),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 10.0),
                    Text(
                      meal.mealTime,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      meal.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '${meal.kiloCaloriesBurnt} kcal',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16.0,
                        ),
                        SizedBox(width: 8.0),
                        Text('${meal.timeTaken} min'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
