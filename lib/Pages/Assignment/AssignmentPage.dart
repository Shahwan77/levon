import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../Utils/Dimensions.dart';
import '../../Widgets/CustomListView.dart';
import '../BottomBar/Controller/BottomNavigationBarrController.dart';
import 'Controller/AssignmentController.dart';

class AssignmentPage extends StatelessWidget {
  AssignmentPage({super.key});
  final BottomNavigationBarrController bottomnavController =
      Get.put(BottomNavigationBarrController());
  final AssignmentController controller = Get.put(AssignmentController());

  @override
  Widget build(BuildContext context) {
    // Prevent screen rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back, color: Colors.black),
          onTap: () {
            bottomnavController.updateSelectedIndex(0);
          },
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 70.w),
          child: Text(
            'Assignment',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<AssignmentController>(
              builder: (_) => Padding(
                padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT_SMALL),
                child: Container(
                  height: 320.h,
                  width: 550.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: TableCalendar(
                    calendarFormat: controller.calendarFormat,
                    focusedDay: controller.focusedDay,
                    calendarStyle: CalendarStyle(),
                    firstDay: DateTime.utc(2020, 1, 1),
                    lastDay: DateTime.utc(2030, 12, 31),
                    selectedDayPredicate: (day) {
                      return isSameDay(controller.selectedDay, day);
                    },
                    onDaySelected: controller.onDaySelected,
                    onFormatChanged: controller.onCalendarFormatChanged,
                    eventLoader: (day) {
                      return controller.events[day] ?? [];
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Dimensions.PADDING_SIZE_DEFAULT),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Assignments(10)',
                    style: TextStyle(
                        fontSize: Dimensions.fontSizeExtraLarge,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomListView()
          ],
        ),
      ),
    );
  }
}
