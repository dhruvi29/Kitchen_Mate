import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitchen_mate/screens/days_of_week.dart';

import 'package:kitchen_mate/screens/wrapper.dart';
import 'package:provider/provider.dart';

import 'package:kitchen_mate/screens/home_screen.dart';
import 'package:kitchen_mate/screens/login_screen.dart';
import 'package:kitchen_mate/screens/meals_planner.dart';
import 'package:kitchen_mate/screens/registration_screen.dart';
import 'package:kitchen_mate/screens/shopping_list.dart';
import 'package:kitchen_mate/screens/welcome_screen.dart';
import 'package:kitchen_mate/screens/sub_list/sub_list.dart';
import 'models/user.dart';
import 'services/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Colors.lightGreen,
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Wrapper.id,
        routes: {
          Wrapper.id: (context) => Wrapper(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          Home.id: (context) => Home(),
          ShoppingList.id: (context) => ShoppingList(),
          MealsPlanner.id: (context) => MealsPlanner(),
          SubList.id: (context) => SubList(),
          WeekDays.id: (context) => WeekDays(),
        },
      ),
    );
  }
}
