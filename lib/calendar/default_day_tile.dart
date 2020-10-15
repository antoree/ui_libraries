import 'package:ui_libraries/calendar/calendarro.dart';
import 'package:ui_libraries/calendar/date_utils.dart';
import 'package:flutter/material.dart';

class CalendarroDayItem extends StatelessWidget {
  CalendarroDayItem({this.date, this.calendarroState, this.onTap});

  DateTime date;
  CalendarroState calendarroState;
  DateTimeCallback onTap;

  @override
  Widget build(BuildContext context) {
    bool isWeekend = DateUtils.isWeekend(date);
    bool isFutureDay = date.difference(DateTime.now()).inDays >= 0 ? true : false;
    var textColor = isFutureDay ? const Color(0xff4B5B53) : const Color(0xffD8D8D8) ;
    bool isToday = DateUtils.isToday(date);
    calendarroState = Calendarro.of(context);

    bool daySelected = calendarroState.isDateSelected(date);

    BoxDecoration boxDecoration;
    if (daySelected ) {
      boxDecoration = BoxDecoration(color: const Color(0xff00C081), shape: BoxShape.circle);
    } else if (isToday) {
      boxDecoration = BoxDecoration(
          border: Border.all(
            color: const Color(0xfff8f8f8),
            width: 1.0,
          ),
          shape: BoxShape.circle);
    }

    Container dot;
    if (isToday) {
      dot = Container(
        width: 5,
        height: 5,
        decoration: new BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
      );
    } else if (daySelected ) {
      dot = Container(
        width: 5,
        height: 5,
        decoration: new BoxDecoration(
          color: const Color(0xff00C081),
          shape: BoxShape.circle,
        ),
      );
    }else {
      dot = Container(
        width: 5,
        height: 5,
        decoration: new BoxDecoration(
          color: const Color(0xfff8f8f8),
          shape: BoxShape.circle,
        ),
      );
    }

    return Expanded(
        child: GestureDetector(
          child: Container(
              height: 50.0,
              decoration: boxDecoration,
              child: new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      child: Center(
                        child: Text(
                          "${date.day}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:  daySelected ? Colors.white : textColor,
                              fontWeight: daySelected ? FontWeight.w700 : FontWeight.w400,
                              fontFamily: "Montserrat",
                              fontStyle:  FontStyle.normal,
                              fontSize: 14.0
                          ),
                        ),
                      )
                    ),
                    Positioned(
                      top: 37,
                      child: dot,
                    )
                  ]
              ),
          ),
          onTap: handleTap,
          behavior: HitTestBehavior.translucent,
        ));
  }

  void handleTap() {
    if (onTap != null) {
      Duration difference = date.difference(DateTime.now());
      if(difference.inDays >= 0) {
        onTap(date);
        calendarroState.setSelectedDate(date);
        calendarroState.setCurrentDate(date);
      }
    }


  }
}