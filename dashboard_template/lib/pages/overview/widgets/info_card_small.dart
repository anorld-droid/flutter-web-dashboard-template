import 'package:dashboard_template/constants/style.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function() OnTap;
  const InfoCardSmall(
      {required this.title,
      required this.value,
      this.topColor = active,
      this.isActive = false,
      required this.OnTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
            onTap: OnTap,
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: isActive ? active : lightGrey, width: .5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: title,
                    size: 24,
                    weight: FontWeight.w300,
                    color: isActive ? active : lightGrey,
                  ),
                  CustomText(
                    text: value,
                    size: 24,
                    weight: FontWeight.bold,
                    color: isActive ? active : lightGrey,
                  )
                ],
              ),
            )));
  }
}
