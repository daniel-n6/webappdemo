import 'package:flutter/material.dart';

class AppPage {
  final bool notFound;
  const AppPage() : notFound = false;
  const AppPage.notFound() : notFound = true;
}

class AppRouterDelegate extends RouterDelegate<AppPage> with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppPage> {
  final GlobalKey<NavigatorState> navigatorKey;
  
  final bool show404 = false;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  AppPage get currentConfiguration {
    if (show404) return AppPage.notFound();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [],
      onPopPage: (route, result) {
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(AppPage page) {
    // TODO: implement setNewRoutePath
    throw UnimplementedError();
  }

  
}

class AppRouteInformationParser extends RouteInformationParser<AppPage> {
  @override
  Future<AppPage> parseRouteInformation(RouteInformation routeInformation) {
    final uri = Uri.parse(routeInformation.location);

  }
  @override
    RouteInformation restoreRouteInformation(AppPage page) {
      // TODO: implement restoreRouteInformation
      return super.restoreRouteInformation(page);
    }
}