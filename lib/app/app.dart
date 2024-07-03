import 'package:chat_app/core/router/app_router.dart';
import 'package:chat_app/core/router/app_router_names.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouterNames.onBoarding,
      title: 'Chat App',
      onGenerateRoute: appRouter.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
