import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar_widget.dart';
import 'package:flutter_application_1/widgets/app_drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileWidget extends StatefulWidget {
  MobileWidget({super.key});

  @override
  State<MobileWidget> createState() => _MobileWidgetState();
}

class _MobileWidgetState extends State<MobileWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 1;
  Map<int, Widget> indexWidgetMap = {
    1: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Profile Info',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text('Date of Birth: April-01-1987', style: TextStyle(fontSize: 13.sp)),
        Text('Nationality: Egyptian', style: TextStyle(fontSize: 13.sp)),
        Text('Marital Status: Married', style: TextStyle(fontSize: 13.sp)),
      ],
    ),
    2: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Contact Info',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text('•Phone: 0115320460, 01008498669',
            style: TextStyle(fontSize: 13.sp)),
        Text('•Email: nadiaelsaih@yahoo.com',
            style: TextStyle(fontSize: 13.sp)),
        Text(
            '''•Address:From Luxor City and Living at Hurghada - Stop shop Area- Eldahaar.''',
            style: TextStyle(fontSize: 13.sp)),
      ],
    ),
    3: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Experience',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          '''•IT Engineer. 
at Makadi SPA & Sunwing Hotels.
From 4/12/2022  To 30/11/2023''',
          style: TextStyle(fontSize: 13.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          '''•HR. Specialist.
at Makadi Spa & Palace Hotels.
From 20/10/2021 TO 19/10/2022''',
          style: TextStyle(fontSize: 13.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          '''•Computer Teacher. 
at Rajac Language School.
From 11/2019 TO 3/2020''',
          style: TextStyle(fontSize: 13.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          '''•Central Agency for Public Mobilization and Statistics.
One Month at 2016''',
          style: TextStyle(fontSize: 13.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          '''•Computer Trainer.
at Social places & Training Center.
From 2012 TO 2013''',
          style: TextStyle(fontSize: 13.sp),
        ),
      ],
    ),
    4: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Education',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text('•Bachelor of Electrical Communication Engineering.',
            style: TextStyle(fontSize: 13.sp)),
        Text('•Assiut university.', style: TextStyle(fontSize: 13.sp)),
        Text('•Faculty of Engineering.', style: TextStyle(fontSize: 13.sp)),
        Text('•Electrical Communication Department.',
            style: TextStyle(fontSize: 13.sp)),
        Text('•General Grade: 62.25%', style: TextStyle(fontSize: 13.sp)),
        Text('•Graduate in June 2011.', style: TextStyle(fontSize: 13.sp)),
      ],
    ),
    5: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Courses',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text('•Flutter Basic  & Flutter Advanced at Egyptian Council',
            style: TextStyle(fontSize: 13.sp)),
        Text('• (N+,A+ & MCSA) self Study.', style: TextStyle(fontSize: 13.sp)),
        Text('• ITI 3 month at luxor governorate (developer & designer).',
            style: TextStyle(fontSize: 13.sp)),
        Text('• Micro Waves & Antenna course.',
            style: TextStyle(fontSize: 13.sp)),
        Text('• CCNA (Semester 1&2) at CISCO.',
            style: TextStyle(fontSize: 13.sp)),
        Text('• GSM & GPRS at GELECOM.', style: TextStyle(fontSize: 13.sp)),
        Text('• PLC at ITC.', style: TextStyle(fontSize: 13.sp)),
        Text('• CNC at ITC.', style: TextStyle(fontSize: 13.sp)),
        Text('• TOT (training of trainers).',
            style: TextStyle(fontSize: 13.sp)),
        Text('• Participate in the Youth Empowerment.',
            style: TextStyle(fontSize: 13.sp)),
        Text('• Photo camera training.', style: TextStyle(fontSize: 13.sp)),
        Text('• Adobe (Photoshop – illustrator – Dreamweaver).',
            style: TextStyle(fontSize: 13.sp)),
      ],
    ),
    6: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Training',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          ''' • Three Weeks Training in TELECOM EGYPT (ARMANT City EXCHANGE).   
                 • Four Weeks Training in electrical station in ARMANT.
                 • Four Months Training in sugar factory in ARMANT.
                 • Two week Training(Micro controller & electronics) in Robocon Laboratory in ASSIUT University.''',
          style: TextStyle(fontSize: 13.sp),
        ),
      ],
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          child: AppDrawerWidget(
            selectedIndex: selectedIndex,
            onClicked: (index) {
              setState(() {
                selectedIndex = index;
              });
              _scaffoldKey.currentState?.closeDrawer();
            },
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: indexWidgetMap[selectedIndex],
        )),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(3, 0), // changes position of shadow
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(Icons.menu)),
                    Expanded(child: AppBarWidget()),
                  ],
                ),
              ),
            )));
  }
}
