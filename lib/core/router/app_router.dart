import 'package:chat_app/core/router/app_router_names.dart';
import 'package:chat_app/features/onBoarding/presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      default:
        return unDefinedRoute(settings);
    }
  }
  static Route<dynamic> unDefinedRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Not Found Route"),
        ),
        body: Center(
          child: Text("Not Found Route ${settings.name}"),
        ),
      ),
    );
  }
}