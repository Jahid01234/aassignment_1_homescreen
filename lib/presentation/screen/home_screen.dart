import 'package:assignment_1_homescreen/presentation/widgets/header_section_widget.dart';
import 'package:assignment_1_homescreen/presentation/widgets/search_box_section.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(right: 15,left: 15) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section.........
              const HeaderSectionWidget(),
              // search box section.......
              SearchBoxSection(),
              const SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );
  }


}
