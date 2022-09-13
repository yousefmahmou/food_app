import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';
import 'package:food_app/screens/categories_meal_screen.dart';
import 'package:food_app/screens/categories_screen.dart';
import 'package:food_app/screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        //accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(
          255,
          254,
          229,
          1,
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromARGB(
                  20,
                  50,
                  50,
                  1,
                ),
              ),
              bodyText2: TextStyle(
                color: Color.fromARGB(
                  20,
                  50,
                  50,
                  1,
                ),
              ),
              // titleLarge: TextStyle(
              //   fontSize: 20,
              //   fontWeight: FontWeight.bold,
              //   fontFamily: 'RobotoCondensed',
              // ),
            ),
      ),
      // home: CategoriesScreen(),
      routes: {
        '/': (context) => CategoriesScreen(),
        CategoriesMealScreen.routeName: (context) => CategoriesMealScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
      },
    );
  }
}
