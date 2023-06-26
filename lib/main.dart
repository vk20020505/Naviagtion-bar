import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import './screens.dart';
// import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  // final count = 0;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controler = PersistentTabController(initialIndex: 1);
  int cartItems = 0;
  int notifyItems = 0;
  int favItems = 0;
  // void Increment(int number) {
  //   setState(() {
  //     number = number + 1;
  //   });
  // }
  _changeCounter(String counter) {
    if (counter == 'increase') {
      cartItems++;
    }
    if (counter == 'decrease') {
      cartItems--;
    }
    setState(() {});
  }
   _changeCounter2(String counter) {
    if (counter == 'increase') {
      notifyItems++;
    }
    if (counter == 'decrease') {
      notifyItems--;
    }
    setState(() {});
  }
   _changeCounter3(String counter) {
    if (counter == 'increase') {
      favItems++;
    }
    if (counter == 'decrease') {
      favItems--;
    }
    setState(() {});
  }

  List<Widget> _buildScreen() {
    return [
      Screen01(callback: _changeCounter),
      Screen02(callback: _changeCounter2),
      Screen03(callback: _changeCounter3),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        icon: Badge(
          label: Text(cartItems.toString()),
          alignment: const AlignmentDirectional(25, -7),
          child: const Icon(Icons.shopping_cart),
        ),
        inactiveIcon: Badge(
          alignment: const AlignmentDirectional(25, -7),
          label: Text(cartItems.toString()),
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        iconSize: 35,
      ),
      PersistentBottomNavBarItem(
        icon: Badge(
          alignment: const AlignmentDirectional(21, -4),
          label: Text(notifyItems.toString()),
          child: const Icon(Icons.notifications),
        ),
        inactiveIcon: Badge(
          alignment: const AlignmentDirectional(21, -4),
          label: Text(notifyItems.toString()),
          child: const Icon(Icons.notifications_none_outlined),
        ),
        iconSize: 35,
      ),
      PersistentBottomNavBarItem(
        icon: Badge(
          alignment: const AlignmentDirectional(23, -6),
          label: Text(favItems.toString()),
          child: const Icon(Icons.favorite),
        ),
        // contentPadding: 8,
        inactiveIcon: Badge(
          alignment: const AlignmentDirectional(23, -6),
          label: Text(favItems.toString()),
          child: const Icon(Icons.favorite_outline),
        ),
        iconSize: 35,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      items: _navBarItem(),
      controller: controler,
      navBarHeight: 80,
      navBarStyle: NavBarStyle.style6,
      // bottomScreenMargin: 1,
      // neumorphicProperties: const NeumorphicProperties(
      //   bevel: 35,
      // ),
      // decoration: NavBarDecoration(
      //     // borderRadius: BorderRadius.circular(20),

      //     border: Border.all(width: 2)),
      // backgroundColor: Colors.lightBlueAccent,
    );
  }
}
