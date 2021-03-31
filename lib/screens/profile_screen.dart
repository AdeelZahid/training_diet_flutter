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
            height: height * 0.32,
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
            top: height * 0.33,
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
                      margin: EdgeInsets.only(bottom: 60, left: 30, right: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF20008B),
                            const Color(0xFF200087),
                          ],
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              child: Text(
                                'Your Next Workout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.1,
                                ),
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Text(
                              'Upper Body',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.3,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF5B4D9D),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/chest.png',
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF5B4D9D),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/back.png',
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF5B4D9D),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/biceps.png',
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF5B4D9D),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/chest.png',
                                    width: 40.0,
                                    height: 40.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
          iconSize: 30.0,
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
