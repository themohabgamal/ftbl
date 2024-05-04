import 'package:flutter/material.dart';
import 'package:ftbl/core/helpers/spacing_helper.dart';
import 'package:ftbl/core/widgets/my_search_bar.dart';
import 'package:ftbl/features/home/ui/widgets/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [verticalSpace(15), const MySearchBar()],
        ),
      ),
    );
  }
}
