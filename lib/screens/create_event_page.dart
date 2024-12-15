import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

import '../configs/app_colors.dart';
import '../extension.dart';
import '../widgets/add_event_form.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key, this.event});

  final CalendarEventData? event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: false,
        leading: IconButton(
          onPressed: context.pop,
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        title: Text(
          event == null ? "Create New Event" : "Update Event",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: AddOrEditEventForm(
            onEventAdd: (newEvent) {
              if (event != null) {
                CalendarControllerProvider.of(context)
                    .controller
                    .update(event!, newEvent);
              } else {
                CalendarControllerProvider.of(context).controller.add(newEvent);
              }

              context.pop(true);
            },
            event: event,
          ),
        ),
      ),
    );
  }
}
