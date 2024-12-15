import 'package:flutter/material.dart';

import '../configs/app_colors.dart';
import '../configs/enumerations.dart';
import '../extension.dart';

class CalendarConfigs extends StatelessWidget {
  const CalendarConfigs({
    super.key,
    required this.onChangeCalendarView,
    required this.currentView,
  });

  final void Function(CalendarView view) onChangeCalendarView;
  final CalendarView currentView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        CalendarView.values.length,
        (index) {
          final view = CalendarView.values[index];
          return GestureDetector(
            onTap: () => onChangeCalendarView(view),
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 40,
              ),
              decoration: BoxDecoration(
                  color: view == currentView
                      ? Color(0xFF685DD833).withOpacity(0.2)
                      : Color(0xFFF2F2F2),
                  border: Border.all(
                    color: Color(0xFFF2F2F2),
                  )),
              child: Text(
                view.name.capitalized,
                style: TextStyle(
                  color:
                      view == currentView ? Color(0xFF7367F0) : AppColors.black,
                  fontSize: 17,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
