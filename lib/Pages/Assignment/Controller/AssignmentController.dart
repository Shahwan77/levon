import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:table_calendar/table_calendar.dart';

class AssignmentController extends GetxController{
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime selectedDay = DateTime.now();
  Map<DateTime, List<dynamic>> events = {};

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    this.selectedDay = selectedDay;
    this.focusedDay = focusedDay;
    update();
  }

  void onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    // Do something when the calendar view changes
  }

  void onCalendarFormatChanged(CalendarFormat format) {
    this.calendarFormat = format;
    update();
  }
}
