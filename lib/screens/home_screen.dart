import 'package:flutter/material.dart';

import '../configs/enumerations.dart';
import '../widgets/day_view_widget.dart';
import '../widgets/month_view_widget.dart';
import '../widgets/week_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    this.selectedView = CalendarView.month,
  });

  final CalendarView selectedView;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late var _selectedView = widget.selectedView;

  void _setView(CalendarView view) {
    if (view != _selectedView && mounted) {
      setState(() {
        _selectedView = view;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: switch (_selectedView) {
                CalendarView.month => MonthViewWidget(
                    state: GlobalKey(),
                    width: width,
                    onChangeCalendarView: _setView,
                    currentView: _selectedView,
                  ),
                CalendarView.week => WeekViewWidget(
                    state: GlobalKey(),
                    width: width,
                    onChangeCalendarView: _setView,
                    currentView: _selectedView,
                  ),
                CalendarView.day => DayViewWidget(
                    state: GlobalKey(),
                    width: width,
                    onChangeCalendarView: _setView,
                    currentView: _selectedView,
                  ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
