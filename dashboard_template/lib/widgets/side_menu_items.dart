import 'package:dashboard_template/widgets/horizontal_menu_items.dart';
import 'package:dashboard_template/widgets/responsiveness.dart';
import 'package:dashboard_template/widgets/vertical_menu_items.dart';
import 'package:flutter/material.dart';

class SideMenuItems extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItems({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context))
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
