import 'package:flegit_laundry/helper/bar_item_widget.dart';
import 'package:flegit_laundry/widgets/archive_widget.dart';
import 'package:flegit_laundry/widgets/home_widget.dart';
import 'package:flegit_laundry/widgets/search_widget.dart';
import 'package:flegit_laundry/widgets/settings_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List _myWidgets = <Widget>[
    HomeWidget(),
    SearchWidget(),
    ArchiveWidget(),
    SettingsWidget(),
  ];

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        onPressed: () {},
        backgroundColor: const Color(0xffCE1567),
        child: const Icon(
          Icons.add,
          color: Color(0xffffffff),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNavBar(),
      body: _myWidgets[selectedindex],
      // body: _myWidgets[selectedindex],
      // bottomNavigationBar: BottomAppBar(
      //   child: ,

      // onTap: (value) {
      //   setState(() {
      //     value = selectedindex;
      //   });
      // },
      // items: const <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.home_outlined,
      //       color: Color(0xffCE1567),
      //     ),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.search_outlined,
      //       color: Color(0xffCE1567),
      //     ),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.archive_outlined,
      //       color: Color(0xffCE1567),
      //     ),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Icon(
      //       Icons.settings,
      //       color: Color(0xffCE1567),
      //     ),
      //     label: '',
      //   ),
      // ],
    );
  }
}

customBottomNavBar() {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        CustomBarItem(
          text: "",
          icon: Icons.home_outlined,
        ),
        CustomBarItem(
          text: '',
          icon: Icons.search_outlined,
        ),
        SizedBox(
          width: 48,
        ),
        CustomBarItem(
          text: '',
          icon: Icons.archive_outlined,
        ),
        CustomBarItem(text: '', icon: Icons.settings_outlined)
      ],
    ),
  );
}
