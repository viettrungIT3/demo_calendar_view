import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../configs/enumerations.dart';
import '../screens/detail_event_screen.dart';
import 'calendar_configs.dart';

class MonthViewWidget extends StatelessWidget {
  final GlobalKey<MonthViewState>? state;
  final double? width;
  final void Function(CalendarView view) onChangeCalendarView;
  final CalendarView currentView;

  const MonthViewWidget({
    super.key,
    this.state,
    this.width,
    required this.onChangeCalendarView,
    this.currentView = CalendarView.month,
  });

  @override
  Widget build(BuildContext context) {
    return MonthView(
      key: state,
      width: width,
      cellAspectRatio: 181 / 118,
      hideDaysNotInMonth: true,
      onEventTap: (event, date) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailEventScreen(
              event: event,
            ),
          ),
        );

        // show card info here
        print(event);
      },
      onEventLongTap: (event, date) {
        SnackBar snackBar = SnackBar(content: Text("on LongTap"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      headerBuilder: (date) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        state?.currentState?.previousPage();
                      },
                      icon: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        state?.currentState?.nextPage();
                      },
                      icon: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 24,
                        ),
                      ),
                    ),
                    Text(
                      DateFormat('MMMM y').format(date),
                    ),
                  ],
                ),
              ),
              CalendarConfigs(
                onChangeCalendarView: onChangeCalendarView,
                currentView: currentView,
              ),
            ],
          ),
        );
      },
    );
  }
}
