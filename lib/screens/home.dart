import 'package:design_task/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../commonWidgets/leadingIconButton.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool darkmode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightGreyColor,
      appBar: AppBar(
        // backgroundColor: lightGreyColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: darkmode
                ? Icon(
                    Icons.dark_mode_outlined,
                    color: greyColor,
                  )
                : Icon(
                    Icons.dark_mode,
                    color: lightGreyColor,
                  ),
            onPressed: () {
              setState(() {
                if (darkmode) {
                  darkmode = false;
                  Get.changeThemeMode(ThemeMode.dark);
                } else {
                  darkmode = true;
                  Get.changeThemeMode(ThemeMode.light);
                }
              });
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: yellowColor,
                    radius: 65,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: darkBrownColor,
                      child: Icon(
                        Icons.perm_identity,
                        size: 60,
                        color: yellowColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "john.doe@example.com",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(yellowColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Upgrade to PRO",
                        style: TextStyle(
                          color: greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  leadingIconButton(Icons.privacy_tip_outlined, "Privacy"),
                  const SizedBox(
                    height: 15,
                  ),
                  leadingIconButton(Icons.history, "Purchase History"),
                  const SizedBox(
                    height: 15,
                  ),
                  leadingIconButton(Icons.help_outline, "Help & Support"),
                  const SizedBox(
                    height: 15,
                  ),
                  leadingIconButton(Icons.settings_outlined, "Settings"),
                  const SizedBox(
                    height: 15,
                  ),
                  leadingIconButton(
                      Icons.person_add_outlined, "Invite a Friend"),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(greyColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
