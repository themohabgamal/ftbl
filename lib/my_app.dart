import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ftbl/core/routing/route_generator.dart';
import 'package:ftbl/core/routing/routes.dart';
import 'package:ftbl/core/theme/theme_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FTBL',
        theme: ThemeData(
          scaffoldBackgroundColor: ThemeHelper.backgroundColor,
          appBarTheme:
              const AppBarTheme(color: Colors.transparent, elevation: 0),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.getStarted,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
