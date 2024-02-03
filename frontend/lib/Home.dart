import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pages/Life.dart';
import 'pages/Theory.dart';
import 'pages/Yoga.dart';
import 'pages/Dashboard.dart';
import 'pages/Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Life(),
    Yoga(),
    Theory(),
    Profile()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/images/lotus.png'),

        shape: CircleBorder(),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 66,
        padding: EdgeInsets.symmetric(vertical: 0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black.withOpacity(0.13),
                width: 2
              )
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                padding: EdgeInsets.all(0),
                minWidth: 40,
                onPressed: () => {
                  setState(() => {
                    currentScreen = Dashboard(),
                    currentTab = 0
                  })
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/home.svg',
                      height: 25,
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        currentTab == 0 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        BlendMode.srcIn
                      ),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: currentTab == 0 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      )
                    )
                  ],
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(0),
                minWidth: 40,
                onPressed: () => {
                  setState(() => {
                    currentScreen = Theory(),
                    currentTab = 1
                  })
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/book.svg',
                      height: 25,
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        currentTab == 1 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        BlendMode.srcIn
                      ),
                    ),
                    Text(
                      'Theory',
                      style: TextStyle(
                        color: currentTab == 1 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      )
                    )
                  ],
                )
              ), 
              Container(
                width: 40,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      "Yoga",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      )
                    ),
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.all(0),
                minWidth: 40,
                onPressed: () => {
                  setState(() => {
                    currentScreen = Life(),
                    currentTab = 2
                  })
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/eye.svg',
                      height: 25,
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        currentTab == 2 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        BlendMode.srcIn
                      ),
                    ),
                    Text(
                      'Life',
                      style: TextStyle(
                        color: currentTab == 2 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      )
                    )
                  ],
                )
              ),
              MaterialButton(
                padding: EdgeInsets.all(0),
                minWidth: 40,
                onPressed: () => {
                  setState(() => {
                    currentScreen = Profile(),
                    currentTab = 3
                  })
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/book.svg',
                      height: 25,
                      width: 25,
                      colorFilter: ColorFilter.mode(
                        currentTab == 3 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        BlendMode.srcIn
                      ),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: currentTab == 3 ? Theme.of(context).primaryColor : Theme.of(context).colorScheme.inversePrimary,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 12
                      )
                    )
                  ],
                )
              )
            ],
          )
        ),
      ),
    );
  }
}