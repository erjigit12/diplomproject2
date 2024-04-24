import 'package:flutter/material.dart';

class ManContainer extends StatelessWidget {
  const ManContainer({
    super.key,
    required this.image,
    required this.name,
    this.extention = "jpeg",
  });

  final String image;
  final String name;
  final String extention;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: Column(
        children: [
          Expanded(
            child: Image(image: AssetImage("assets/mans/man$image.$extention")),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
