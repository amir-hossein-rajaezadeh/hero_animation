import 'package:flutter/material.dart';

class BuildDeviderWidget extends StatelessWidget {
  const BuildDeviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, right: 10, left: 10),
      height: 2,
      decoration: BoxDecoration(color: Colors.grey.shade300),
    );
  }
}
