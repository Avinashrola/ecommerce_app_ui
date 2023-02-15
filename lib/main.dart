import 'package:ecommerce_app_ui/screens/checkoutscreenpage.dart';
import 'package:ecommerce_app_ui/screens/homescreenpage.dart';
import 'package:ecommerce_app_ui/screens/productdetailpage.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: CheckOutScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: const HomeScreen(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          height: 64,
          width: 327,
          child: CustomNavigationBar(
            isFloating: true,
            borderRadius: Radius.circular(40),
            strokeColor: Colors.transparent,
            selectedColor: Colors.white,
            unSelectedColor: lightGrey,
            backgroundColor: Colors.black,
            scaleFactor: 0.4,
            iconSize: 35,
            items: [
              CustomNavigationBarItem(
                icon: _currentIndex == 0
                    ? SvgPicture.asset(
                        "assets/home_icon_selected.svg",
                      )
                    : SvgPicture.asset(
                        "assets/home_icon_unselected.svg",
                      ),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 1
                    ? SvgPicture.asset(
                        "assets/cart_icon_selected.svg",
                      )
                    : SvgPicture.asset(
                        "assets/cart_icon_unselected.svg",
                      ),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 2
                    ? SvgPicture.asset(
                        "assets/favorite_icon_selected.svg",
                      )
                    : SvgPicture.asset(
                        "assets/favorite_icon_unselected.svg",
                      ),
              ),
              CustomNavigationBarItem(
                icon: _currentIndex == 3
                    ? SvgPicture.asset(
                        "assets/account_icon_selected.svg",
                      )
                    : SvgPicture.asset(
                        "assets/account_icon_unselected.svg",
                      ),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
