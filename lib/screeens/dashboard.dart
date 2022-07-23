import 'package:admission/navigation_pages/home.dart';
import 'package:admission/navigation_pages/notification.dart';
import 'package:admission/navigation_pages/profile.dart';
import 'package:admission/navigation_pages/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomAppBar(
        //   shape: CircularNotchedRectangle(),
        //   notchMargin: 10,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = HomeScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                            color: currentTab == 0 ? Colors.cyan : Colors.grey,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color:
                                  currentTab == 0 ? Colors.cyan : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = ProfileScreen();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 30,
                            color: currentTab == 1 ? Colors.cyan : Colors.grey,
                          ),
                          Text(
                            "Profile",
                            style: TextStyle(
                              color:
                                  currentTab == 1 ? Colors.cyan : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = SettingScreen();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.settings,
                            size: 30,
                            color: currentTab == 2 ? Colors.cyan : Colors.grey,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.cyan : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = NotificationScreen();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: currentTab == 3 ? Colors.cyan : Colors.grey,
                          ),
                          Text(
                            "Notification",
                            style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.cyan : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
