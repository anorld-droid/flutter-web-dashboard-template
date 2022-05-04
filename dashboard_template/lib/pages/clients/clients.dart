import 'package:dashboard_template/constants/controllers.dart';
import 'package:dashboard_template/pages/clients/widgets/clients_table.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:dashboard_template/widgets/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Obx(() => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    ))
              ],
            )),
        Expanded(child: ListView(children: [ClientsTable()]))
      ]),
    );
  }
}
