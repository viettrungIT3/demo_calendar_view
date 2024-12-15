import 'package:calendar_view/calendar_view.dart';

DateTime get _now => DateTime.now();

List<CalendarEventData> mockEvents = [
  CalendarEventData(
    date: _now,
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 22),
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 14),
    endTime: DateTime(_now.year, _now.month, _now.day, 17),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 3)),
    startTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
    endTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        14),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        16),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        10),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        12),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 5)),
    startTime: DateTime(_now.add(Duration(days: 5)).year,
        _now.add(Duration(days: 5)).month, _now.add(Duration(days: 5)).day, 9),
    endTime: DateTime(_now.add(Duration(days: 5)).year,
        _now.add(Duration(days: 5)).month, _now.add(Duration(days: 5)).day, 11),
    title: "Project Review",
    description: "Quarterly project review meeting with stakeholders.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 7)),
    startTime: DateTime(_now.add(Duration(days: 7)).year,
        _now.add(Duration(days: 7)).month, _now.add(Duration(days: 7)).day, 13),
    endTime: DateTime(_now.add(Duration(days: 7)).year,
        _now.add(Duration(days: 7)).month, _now.add(Duration(days: 7)).day, 15),
    title: "Dentist Appointment",
    description: "Regular dental checkup.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 8)),
    startTime: DateTime(_now.add(Duration(days: 8)).year,
        _now.add(Duration(days: 8)).month, _now.add(Duration(days: 8)).day, 10),
    endTime: DateTime(_now.add(Duration(days: 8)).year,
        _now.add(Duration(days: 8)).month, _now.add(Duration(days: 8)).day, 12),
    title: "Client Meeting",
    description: "Discussion about new project requirements.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 10)),
    startTime: DateTime(
        _now.add(Duration(days: 10)).year,
        _now.add(Duration(days: 10)).month,
        _now.add(Duration(days: 10)).day,
        15),
    endTime: DateTime(
        _now.add(Duration(days: 10)).year,
        _now.add(Duration(days: 10)).month,
        _now.add(Duration(days: 10)).day,
        17),
    title: "Team Building",
    description: "Office team building activities.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 12)),
    startTime: DateTime(
        _now.add(Duration(days: 12)).year,
        _now.add(Duration(days: 12)).month,
        _now.add(Duration(days: 12)).day,
        11),
    endTime: DateTime(
        _now.add(Duration(days: 12)).year,
        _now.add(Duration(days: 12)).month,
        _now.add(Duration(days: 12)).day,
        13),
    title: "Training Session",
    description: "New technology training for developers.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 15)),
    startTime: DateTime(
        _now.add(Duration(days: 15)).year,
        _now.add(Duration(days: 15)).month,
        _now.add(Duration(days: 15)).day,
        14),
    endTime: DateTime(
        _now.add(Duration(days: 15)).year,
        _now.add(Duration(days: 15)).month,
        _now.add(Duration(days: 15)).day,
        16),
    title: "Product Launch",
    description: "New product launch event.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 17)),
    startTime: DateTime(
        _now.add(Duration(days: 17)).year,
        _now.add(Duration(days: 17)).month,
        _now.add(Duration(days: 17)).day,
        9),
    endTime: DateTime(
        _now.add(Duration(days: 17)).year,
        _now.add(Duration(days: 17)).month,
        _now.add(Duration(days: 17)).day,
        11),
    title: "Code Review",
    description: "Team code review session.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 20)),
    startTime: DateTime(
        _now.add(Duration(days: 20)).year,
        _now.add(Duration(days: 20)).month,
        _now.add(Duration(days: 20)).day,
        13),
    endTime: DateTime(
        _now.add(Duration(days: 20)).year,
        _now.add(Duration(days: 20)).month,
        _now.add(Duration(days: 20)).day,
        15),
    title: "Budget Meeting",
    description: "Annual budget planning meeting.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 22)),
    startTime: DateTime(
        _now.add(Duration(days: 22)).year,
        _now.add(Duration(days: 22)).month,
        _now.add(Duration(days: 22)).day,
        10),
    endTime: DateTime(
        _now.add(Duration(days: 22)).year,
        _now.add(Duration(days: 22)).month,
        _now.add(Duration(days: 22)).day,
        12),
    title: "UI/UX Workshop",
    description: "Design thinking workshop.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 25)),
    startTime: DateTime(
        _now.add(Duration(days: 25)).year,
        _now.add(Duration(days: 25)).month,
        _now.add(Duration(days: 25)).day,
        15),
    endTime: DateTime(
        _now.add(Duration(days: 25)).year,
        _now.add(Duration(days: 25)).month,
        _now.add(Duration(days: 25)).day,
        17),
    title: "Client Presentation",
    description: "Project progress presentation to client.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 5)),
    startTime: DateTime(
        _now.subtract(Duration(days: 5)).year,
        _now.subtract(Duration(days: 5)).month,
        _now.subtract(Duration(days: 5)).day,
        11),
    endTime: DateTime(
        _now.subtract(Duration(days: 5)).year,
        _now.subtract(Duration(days: 5)).month,
        _now.subtract(Duration(days: 5)).day,
        13),
    title: "Team Lunch",
    description: "Monthly team lunch.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 7)),
    startTime: DateTime(
        _now.subtract(Duration(days: 7)).year,
        _now.subtract(Duration(days: 7)).month,
        _now.subtract(Duration(days: 7)).day,
        14),
    endTime: DateTime(
        _now.subtract(Duration(days: 7)).year,
        _now.subtract(Duration(days: 7)).month,
        _now.subtract(Duration(days: 7)).day,
        16),
    title: "Sprint Planning",
    description: "Next sprint planning session.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 9)),
    startTime: DateTime(
        _now.subtract(Duration(days: 9)).year,
        _now.subtract(Duration(days: 9)).month,
        _now.subtract(Duration(days: 9)).day,
        9),
    endTime: DateTime(
        _now.subtract(Duration(days: 9)).year,
        _now.subtract(Duration(days: 9)).month,
        _now.subtract(Duration(days: 9)).day,
        11),
    title: "Performance Review",
    description: "Quarterly performance review.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 12)),
    startTime: DateTime(
        _now.subtract(Duration(days: 12)).year,
        _now.subtract(Duration(days: 12)).month,
        _now.subtract(Duration(days: 12)).day,
        13),
    endTime: DateTime(
        _now.subtract(Duration(days: 12)).year,
        _now.subtract(Duration(days: 12)).month,
        _now.subtract(Duration(days: 12)).day,
        15),
    title: "Tech Talk",
    description: "Internal tech knowledge sharing session.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 15)),
    startTime: DateTime(
        _now.subtract(Duration(days: 15)).year,
        _now.subtract(Duration(days: 15)).month,
        _now.subtract(Duration(days: 15)).day,
        10),
    endTime: DateTime(
        _now.subtract(Duration(days: 15)).year,
        _now.subtract(Duration(days: 15)).month,
        _now.subtract(Duration(days: 15)).day,
        12),
    title: "Board Meeting",
    description: "Monthly board meeting.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 17)),
    startTime: DateTime(
        _now.subtract(Duration(days: 17)).year,
        _now.subtract(Duration(days: 17)).month,
        _now.subtract(Duration(days: 17)).day,
        15),
    endTime: DateTime(
        _now.subtract(Duration(days: 17)).year,
        _now.subtract(Duration(days: 17)).month,
        _now.subtract(Duration(days: 17)).day,
        17),
    title: "API Review",
    description: "API documentation review meeting.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 20)),
    startTime: DateTime(
        _now.subtract(Duration(days: 20)).year,
        _now.subtract(Duration(days: 20)).month,
        _now.subtract(Duration(days: 20)).day,
        11),
    endTime: DateTime(
        _now.subtract(Duration(days: 20)).year,
        _now.subtract(Duration(days: 20)).month,
        _now.subtract(Duration(days: 20)).day,
        13),
    title: "Security Audit",
    description: "Annual security audit meeting.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 22)),
    startTime: DateTime(
        _now.subtract(Duration(days: 22)).year,
        _now.subtract(Duration(days: 22)).month,
        _now.subtract(Duration(days: 22)).day,
        14),
    endTime: DateTime(
        _now.subtract(Duration(days: 22)).year,
        _now.subtract(Duration(days: 22)).month,
        _now.subtract(Duration(days: 22)).day,
        16),
    title: "Resource Planning",
    description: "Team resource allocation meeting.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 25)),
    startTime: DateTime(
        _now.subtract(Duration(days: 25)).year,
        _now.subtract(Duration(days: 25)).month,
        _now.subtract(Duration(days: 25)).day,
        9),
    endTime: DateTime(
        _now.subtract(Duration(days: 25)).year,
        _now.subtract(Duration(days: 25)).month,
        _now.subtract(Duration(days: 25)).day,
        11),
    title: "Vendor Meeting",
    description: "Meeting with new technology vendors.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 27)),
    startTime: DateTime(
        _now.subtract(Duration(days: 27)).year,
        _now.subtract(Duration(days: 27)).month,
        _now.subtract(Duration(days: 27)).day,
        13),
    endTime: DateTime(
        _now.subtract(Duration(days: 27)).year,
        _now.subtract(Duration(days: 27)).month,
        _now.subtract(Duration(days: 27)).day,
        15),
    title: "Strategy Meeting",
    description: "Quarterly strategy planning session.",
  )
];
