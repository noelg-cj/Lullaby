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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
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
                            color: currentTab == 0 ? Theme.of(context).primaryColor : Colors.grey
                          )
                        )
                      ],
                    )
                  ),
                  MaterialButton(
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
                            fontFamily: 'Poppins',
                            fontSize: 12
                          )
                        )
                      ],
                    )
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}