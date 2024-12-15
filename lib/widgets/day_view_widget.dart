import 'package:calendar_view/calendar_view.dart';
import 'package:demo_calendar_view/widgets/calendar_configs.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../configs/enumerations.dart';

class DayViewWidget extends StatelessWidget {
  final GlobalKey<DayViewState>? state;
  final double? width;
  final Function(CalendarView) onChangeCalendarView;
  final CalendarView currentView;

  const DayViewWidget({
    super.key,
    this.state,
    this.width,
    required this.onChangeCalendarView,
    required this.currentView,
  });

  @override
  Widget build(BuildContext context) {
    return DayView(
      key: state,
      width: width,
      startDuration: Duration(hours: DateTime.now().hour),
      showHalfHours: true,
      heightPerMinute: 3,
      timeLineBuilder: _timeLineBuilder,
      scrollPhysics: const BouncingScrollPhysics(),
      // eventArranger: SideEventArranger(maxWidth: 300),
      hourIndicatorSettings: HourIndicatorSettings(
        color: Theme.of(context).dividerColor,
      ),
      onTimestampTap: (date) {
        SnackBar snackBar = SnackBar(
          content: Text("On tap: ${date.hour} Hr : ${date.minute} Min"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      onEventTap: (events, date) {
        print(events);
      },
      onEventLongTap: (events, date) {
        SnackBar snackBar = SnackBar(content: Text("on LongTap"));
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      halfHourIndicatorSettings: HourIndicatorSettings(
        color: Theme.of(context).dividerColor,
        lineStyle: LineStyle.dashed,
      ),
      verticalLineOffset: 0,
      timeLineWidth: 65,
      showLiveTimeLineInAllDays: true,
      liveTimeIndicatorSettings: LiveTimeIndicatorSettings(
        color: Colors.redAccent,
        showBullet: false,
        showTime: true,
        showTimeBackgroundView: true,
      ),
      dayTitleBuilder: (date) {
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
                      DateFormat('MMMM d, y').format(date),
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

  Widget _timeLineBuilder(DateTime date) {
    if (date.minute != 0) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            top: -8,
            right: 8,
            child: Text(
              "${date.hour}:${date.minute}",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black.withAlpha(50),
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    }

    final hour = ((date.hour - 1) % 12) + 1;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          top: -8,
          right: 8,
          child: Text(
            "$hour ${date.hour ~/ 12 == 0 ? "am" : "pm"}",
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
