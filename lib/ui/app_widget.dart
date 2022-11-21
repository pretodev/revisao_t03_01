import 'package:flutter/material.dart';
import 'package:revisao_t03_01/ui/views/details_view.dart';

import 'views/home_view.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final pageController = PageController();

  int selectedNum = 0;
  int counter = 0;

  void addItem() {
    setState(() {
      counter++;
    });
  }

  void showDetails(int num) {
    setState(() {
      selectedNum = num;
    });
    pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void back() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomeView(
            addItem: addItem,
            counter: counter,
            onItemClicked: showDetails,
          ),
          DetailsView(
            num: selectedNum,
            onBackClicked: back,
          ),
        ],
      ),
    );
  }
}
