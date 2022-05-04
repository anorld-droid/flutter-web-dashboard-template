import 'package:dashboard_template/constants/controllers.dart';
import 'package:dashboard_template/pages/clients/widgets/clients_table.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:dashboard_template/widgets/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        "ssets/images/error.png",
        width: 350,
      ),
      SizedBox(
        height: 10,
      ),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CustomText(text: "Page not found", size: 24, weight: FontWeight.bold)
      ])
    ]));
  }
}
