import 'package:dashboard_template/constants/controllers.dart';
import 'package:dashboard_template/constants/style.dart';
import 'package:dashboard_template/pages/authentication/authentication.dart';
import 'package:dashboard_template/routing/routes.dart';
import 'package:dashboard_template/widgets/custom_text.dart';
import 'package:dashboard_template/widgets/responsiveness.dart';
import 'package:dashboard_template/widgets/side_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: _width / 48,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Flexible(
                      child: CustomText(
                    text: "Dash",
                    size: 20,
                    weight: FontWeight.bold,
                    color: active,
                  )),
                  SizedBox(
                    width: _width / 48,
                  ),
                ],
              ),
            ]),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((item) => SideMenuItems(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == AuthenticationPageRoute) {
                          menuController
                              .changeActiveItemTo(OverViewPageDisplayName);
                          Get.offAllNamed(AuthenticationPageRoute);
                        }

                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context))
                            Get.back();
                          navigationController.navigateTo(item.route);
                        }
                      }))
                  .toList())
        ],
      ),
    );
  }
}
