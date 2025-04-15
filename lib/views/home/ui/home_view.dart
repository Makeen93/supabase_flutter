import 'package:flutter/material.dart';

import '../../../core/widgets/custom_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const customSearchField(),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/buy.jpg')
        ],
      ),
    );
  }
}
