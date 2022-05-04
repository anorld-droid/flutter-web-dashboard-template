import 'package:dashboard_template/pages/authentication/authentication.dart';
import 'package:dashboard_template/pages/clients/clients.dart';
import 'package:dashboard_template/pages/drivers/drivers.dart';
import 'package:dashboard_template/pages/overview/overview.dart';
import 'package:dashboard_template/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case DriversPageRoute:
      return _getPageRoute(DriversPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: ((context) => child));
}
