import 'package:flutter/material.dart';
import 'package:todo/Screen/Buttom_sheets/Add_Buttom_Sheet.dart';
import 'package:todo/Screen/Tab/Setting.dart';
import 'package:todo/Screen/Tab/ListTap.dart';
import 'package:todo/Utals/Colors.dart';

class HomeScreen extends StatefulWidget {
  static const String rouatName = "Home-Screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent,
      appBar: buildAppBar(),
      body: number ==0? ListTab():SettingScreen(),
      bottomNavigationBar: buildBottonNav(),
      floatingActionButton: buildfab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildfab() => FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(context: context,isScrollControlled: true, builder: (_) => Padding(
          padding:MediaQuery.of(context).viewInsets,
          child: AddButtomSheet(),
        ));
      },
      child: Icon(Icons.add));

  Widget buildBottonNav() => BottomAppBar(
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          currentIndex: number,
          onTap: (index){
            number = index;
            setState(() {
              
            });
          },
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ]),
      );

  PreferredSizeWidget buildAppBar() => AppBar(title: Text("To Do List"),toolbarHeight: MediaQuery.of(context).size.height *.1,);
}
