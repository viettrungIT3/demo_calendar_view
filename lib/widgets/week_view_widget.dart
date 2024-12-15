import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:demo_calendar_view/widgets/calendar_configs.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../configs/enumerations.dart';
import '../screens/detail_event_screen.dart';

class WeekViewWidget extends StatelessWidget {
  final GlobalKey<WeekViewState>? state;
  final double width;
  final Function(CalendarView) onChangeCalendarView;
  final CalendarView currentView;

  const WeekViewWidget({
    super.key,
    this.state,
    required this.width,
    required this.onChangeCalendarView,
    required this.currentView,
  });

  @override
  Widget build(BuildContext context) {
    double _width = width -
        2 * MediaQuery.of(context).padding.left -
        2 * MediaQuery.of(context).padding.right;
    return LayoutBuilder(builder: (context, constraint) {
      _width = min(_width, constraint.maxWidth);
      return WeekView(
        key: state,
        width: _width,
        showLiveTimeLineInAllDays: true,
        startHour: DateTime.now().hour,
        timeLineWidth: 65,
        scrollPhysics: const BouncingScrollPhysics(),
        liveTimeIndicatorSettings: LiveTimeIndicatorSettings(
          color: Colors.redAccent,
          showTime: true,
        ),
        onTimestampTap: (date) {
          SnackBar snackBar = SnackBar(
            content: Text("On tap: ${date.hour} Hr : ${date.minute} Min"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        onEventTap: (events, date) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailEventScreen(
                event: events.first,
              ),
            ),
          );
        },
        onEventLongTap: (events, date) {
          SnackBar snackBar = SnackBar(content: Text("on LongTap"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        weekPageHeaderBuilder: (date1, date2) {
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
                      AutoSizeText(
                        "${DateFormat('MMMM d, y').format(date1)} - ${DateFormat('MMMM d, y').format(date2)}",
                        maxLines: 2,
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
    });
  }
}
