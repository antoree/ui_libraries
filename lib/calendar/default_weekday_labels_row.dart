import 'package:flutter/widgets.dart';

class CalendarroWeekdayLabelsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text("T2", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ),)),
        Expanded(child: Text("T3", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
        Expanded(child: Text("T4", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
        Expanded(child: Text("T5", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
        Expanded(child: Text("T6", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
        Expanded(child: Text("T7", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
        Expanded(child: Text("CN", textAlign: TextAlign.center, style: const TextStyle(
            color:  const Color(0xff4B5B53),
            fontWeight: FontWeight.w400,
            fontFamily: "Montserrat",
            fontStyle:  FontStyle.normal,
            fontSize: 14.0
        ))),
      ],
    );
  }
}