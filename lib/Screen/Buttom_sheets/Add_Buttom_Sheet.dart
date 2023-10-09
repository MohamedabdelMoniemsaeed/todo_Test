import 'package:flutter/material.dart';
import 'package:todo/Utals/Colors.dart';
import 'package:todo/Utals/My_Text_Field.dart';
import 'package:todo/Utals/Theme.dart';

class AddButtomSheet extends StatelessWidget {
  static const String rouatName = "Add Button Sheet";
  const AddButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          Text("Add New Task",
              textAlign: TextAlign.center, style: AppTheme.addandEdit),
          SizedBox(height: 10),
          MyTextField("Enter your Task"),
          SizedBox(height: 10),
          MyTextField("Enter Description"),
          SizedBox(height: 40),
          Text("Select time", style: AppTheme.selectteam),
          SizedBox(height: 10),
          Text("10/10/2023",
              textAlign: TextAlign.center, style: AppTheme.TeamText),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
