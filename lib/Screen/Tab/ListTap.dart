import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/Screen/ListView/ListView.dart';
import 'package:todo/Utals/Colors.dart';

class ListTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *.15,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Container(color: AppColors.primiary,)),
                  Expanded(child: Container(color: AppColors.accent,)),
                ],
              ),
              
              
              CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days: 365)),
              lastDate: DateTime.now().add(Duration(days: 365)),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: AppColors.black,
              dayColor: AppColors.black,
              activeDayColor: AppColors.primiary,
              activeBackgroundDayColor: AppColors.white,
              dotsColor: AppColors.transparent,
              
              locale: 'en_ISO',
            ),],
            
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => ListViewTab(),
          ),
        ),
      ],
    );
  }
}
