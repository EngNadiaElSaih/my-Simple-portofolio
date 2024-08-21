import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawerWidget extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onClicked;

  const AppDrawerWidget({
    required this.selectedIndex,
    required this.onClicked,
    super.key,
  });

  Color getColor(int index) {
    return index == selectedIndex ? Colors.indigo : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.h,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Eng_Nadia El_Saih",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                accountEmail: Text("nadiaelsaih@yahoo.com"),
                currentAccountPicture: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 210.r,
                      backgroundImage: AssetImage("assets/nadia.jpg"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(1),
                    iconColor: getColor(1),
                    textColor: getColor(1),
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(2),
                    iconColor: getColor(2),
                    textColor: getColor(2),
                    leading: Icon(Icons.contact_mail),
                    title: Text('Contact'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(3),
                    iconColor: getColor(3),
                    textColor: getColor(3),
                    leading: Icon(Icons.work_history),
                    title: Text('Experience'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(4),
                    iconColor: getColor(4),
                    textColor: getColor(4),
                    leading: Icon(Icons.cast_for_education),
                    title: Text('Education'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(5),
                    iconColor: getColor(5),
                    textColor: getColor(5),
                    leading: Icon(Icons.masks),
                    title: Text('Courses'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: ListTile(
                    onTap: () => onClicked(6),
                    iconColor: getColor(6),
                    textColor: getColor(6),
                    leading: Icon(Icons.model_training_rounded),
                    title: Text('Training'),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 80,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('All Rights Reserved for @NMEL , 2024'),
                SizedBox(height: 10),
                Text('Version 1.0.0'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
