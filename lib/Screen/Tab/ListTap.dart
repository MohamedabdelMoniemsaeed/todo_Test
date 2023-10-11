import 'dart:convert';

import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/Screen/ListView/ListView.dart';
import 'package:todo/Screen/data/data.dart';
import 'package:todo/Utals/Colors.dart';

class ListTab extends StatefulWidget {
  @override
  State<ListTab> createState() => _ListTabState();
}

class _ListTabState extends State<ListTab> {
  List<dataadd> todos = [];

  @override
  Widget build(BuildContext context) {
    if (todos.isEmpty) {
      refreshTodosList();
    }

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .15,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [AppColors.primiary, AppColors.accent],
                        stops: [0.1, 5])),
              ),
              // Column(
              //   children: [
              //     Expanded(child: Container(color: AppColors.primiary,)),
              //     Expanded(child: Container(color: AppColors.accent,)),
              //   ],
              // ),

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
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) => ListViewTab(model: todos[index]),
          ),
        ),
      ],
    );
  }

  refreshTodosList() async {
    CollectionReference todosCollection =
        FirebaseFirestore.instance.collection("todos");
    QuerySnapshot todoSnphshot = await todosCollection.get();
    List<QueryDocumentSnapshot> docs = todoSnphshot.docs;
    for (int i = 0; i < docs.length; i++) {
      Map json = docs[i].data() as Map;
      dataadd todo = dataadd.fromJson(json);
      todos.add(todo);
    }
    setState(() {});
  }
}
