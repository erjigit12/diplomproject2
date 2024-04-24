import 'package:diplomproject2/src/constants/text_style.dart';
import 'package:flutter/material.dart';

class MenuTapWidget extends StatelessWidget {
  const MenuTapWidget({
    super.key,
    required this.title,
    // required this.subTitle,
    required this.onTap,
    required this.color,
  });

  final String title;
  // final String subTitle;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          alignment: Alignment.center,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: ListTile(
            title: Text(title),
            // subtitle: Text(subTitle),
            enabled: true,
            enableFeedback: true,
            titleTextStyle: AppTextStyle.f20w000,
            subtitleTextStyle: AppTextStyle.f15w400,
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
