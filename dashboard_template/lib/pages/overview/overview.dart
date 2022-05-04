import 'package:dashboard_template/constants/controllers.dart';
import 'package:dashboard_template/pages/overview/widgets/available_drivers.dart';
import 'package:dashboard_template/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard_template/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard_template/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard_template/pages/overview/widgets/revenue_section_large.dart';
import 'package:dashboard_template/pages/overview/widgets/revenue_section_small.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:dashboard_template/widgets/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

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
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                OverviewCardsMediumScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
            else
              RevenueSectionSmall(),
            AvailableDrivers()
          ],
        ))
      ]),
    );
  }
}
