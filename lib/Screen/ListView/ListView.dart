import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/Utals/Colors.dart';
import 'package:todo/Utals/Theme.dart';

class ListViewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * .13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Slidable(
        startActionPane:
            ActionPane(extentRatio: .3, motion: StretchMotion(), children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(20),
            onPressed: (context) {},
            backgroundColor: AppColors.red,
            foregroundColor: AppColors.white,
            icon: (Icons.delete),
            label: "Delete",
          )
        ]),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 17),
              VerticalDivider(),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tital Task",
                      style: AppTheme.titaltext,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "body Task",
                      style: AppTheme.TeamText,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  width: 70,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primiary,
                  ),
                  child: Icon(
                    Icons.check,
                    color: AppColors.white,
                    size: 35,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
