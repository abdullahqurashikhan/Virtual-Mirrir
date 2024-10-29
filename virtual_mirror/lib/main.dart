import 'package:flutter/material.dart';
import 'route_generator.dart';
import 'routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const VirtualMirrorApp());
}

class VirtualMirrorApp extends StatelessWidget {
  const VirtualMirrorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Mirror',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black87,
          displayColor: Colors.black87,
        ),
        scaffoldBackgroundColor: const Color(0xFFE8F5E9),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.cyan,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.cyanAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFF0F2027),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF2C5364),
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.cyanAccent),
          titleTextStyle: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.cyanAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
      onUnknownRoute: RouteGenerator.errorRoute, // Pass RouteSettings here if needed
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          data: mediaQueryData.copyWith(
            textScaleFactor: mediaQueryData.textScaleFactor.clamp(1.0, 1.3),
          ),
          child: child!,
        );
      },
    );
  }
}
