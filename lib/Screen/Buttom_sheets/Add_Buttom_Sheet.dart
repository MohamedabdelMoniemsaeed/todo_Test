import 'package:flutter/material.dart';
import 'package:todo/Utals/Colors.dart';
import 'package:todo/Utals/My_Text_Field.dart';
import 'package:todo/Utals/Theme.dart';

class AddButtomSheet extends StatefulWidget {
  static const String rouatName = "Add Button Sheet";

  @override
  State<AddButtomSheet> createState() => _AddButtomSheetState();
}

class _AddButtomSheetState extends State<AddButtomSheet> {
  TextEditingController titlecontroller = TextEditingController();

  TextEditingController descriptioncontroller = TextEditingController();
  DateTime selectdate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * .45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 10),
          Text("Add New Task",
              textAlign: TextAlign.center, style: AppTheme.addandEdit),
          SizedBox(height: 10),
          MyTextField("Enter your Task", titlecontroller),
          SizedBox(height: 10),
          MyTextField("Enter Description", descriptioncontroller),
          SizedBox(height: 40),
          Text("Select time", style: AppTheme.selectteam),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              showMyDate();
            },
            child: Text("${selectdate.day}/${selectdate.month}/${selectdate.year}",
                textAlign: TextAlign.center, style: AppTheme.TeamText),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              addToDoTO();
            },
            child: Text("Add"),
          ),
        ],
      ),
    );
  }

  void showMyDate() async {
    selectdate = await showDatePicker(
          context: context,
          initialDate: selectdate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(
            Duration(days: 365),
          ),
        ) ??
        selectdate;
        setState(() {
          
        });
        
  }

  void addToDoTO() {}
}
