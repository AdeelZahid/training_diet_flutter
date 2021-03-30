import 'package:flutter/material.dart';
import 'package:training_diet/model/meal.dart';
import 'package:training_diet/widgets/mealcard.dart';

class ProfileScreen extends StatefulWidget {
  Meal meals;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    print('Length is :  ${meals.length}');
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40.0),
              ),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: height * 0.36,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.65,
              // color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                      left: 32,
                      right: 18.0,
                    ),
                    child: Text(
                      'Meals for Today',
                      style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: null,
                      child: Row(
                        children: [
                          SizedBox(width: 32.0),
                          for (int i = 0; i < meals.length; i++)
                            MealCard(
                              meal: meals[i],
                            ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          iconSize: 40.0,
          selectedIconTheme: IconThemeData(color: const Color(0xFF200087)),
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
