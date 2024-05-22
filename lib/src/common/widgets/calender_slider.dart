import 'dart:math';

import 'package:calendar_slider/calendar_slider.dart';
import 'package:flutter/material.dart';

class CalenderSliderBuilder extends StatefulWidget {
  const CalenderSliderBuilder({super.key});

  @override
  State<CalenderSliderBuilder> createState() => _CalenderSliderBuilderState();
}

class _CalenderSliderBuilderState extends State<CalenderSliderBuilder> {
  late CalendarSliderController _sliderController = CalendarSliderController();
  late DateTime _dateTime;

  late DateTime _selectedDateBar;

  Random random = Random();

  @override
  void initState() {
    super.initState();
    _selectedDateBar = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return CalendarSlider(
      
        controller: _sliderController,
        selectedDateColor: Colors.black,
        selectedDayPosition: SelectedDayPosition.center,
        fullCalendarScroll: FullCalendarScroll.vertical,
        backgroundColor: Colors.black,
        fullCalendarWeekDay: WeekDay.short,
        selectedTileBackgroundColor: Colors.yellow,
        monthYearButtonBackgroundColor: Colors.white,
        monthYearTextColor: Colors.black,
        tileBackgroundColor: Colors.black,
        dateColor: Colors.white,
        tileShadow: BoxShadow(color: Colors.black),
        locale: 'en',
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 365)),
        lastDate: DateTime.now().add(const Duration(days: 365)),
        onDateSelected: (date) {
          setState(() {
            _selectedDateBar = date;
          });
        });
  }
}
