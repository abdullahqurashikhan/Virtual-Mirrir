import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'onboarding_screen.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'upload_photo_screen.dart';
import 'try_on_screen.dart';
import 'image_library_screen.dart';
import 'saved_tryons_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
import 'feedback_screen.dart';
import 'sign_up_screen.dart';
import 'routes.dart';

class RouteGenerator {
  // Main route generation method with route-specific screens
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return _buildRoute(SplashScreen());
      case Routes.onboarding:
        return _buildRoute(const OnboardingScreen());
      case Routes.login:
        return _buildRoute(LoginScreen());
      case Routes.home:
        return _buildRoute(HomeScreen());
      case Routes.uploadPhoto:
        return _buildRoute(UploadPhotoScreen());
      case Routes.tryOn:
        return _buildRoute(TryOnScreen());
      case Routes.imageLibrary:
        return _buildRoute(ImageLibraryScreen());
      case Routes.savedTryOns:
        return _buildRoute(SavedTryOnsScreen());
      case Routes.profile:
        return _buildRoute(ProfileScreen());
      case Routes.settings:
        return _buildRoute(SettingsScreen());
      case Routes.feedback:
        return _buildRoute(FeedbackScreen());
      case Routes.signUp:
        return _buildRoute(SignUpScreen());
      default:
        return errorRoute(settings); // Pass settings to error route
    }
  }

  // Helper method to build MaterialPageRoute for screens
  static MaterialPageRoute<dynamic> _buildRoute(Widget screen) {
    return MaterialPageRoute(builder: (_) => screen);
  }

  // Error route for unrecognized paths
  static Route<dynamic> errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          backgroundColor: Colors.redAccent,
        ),
        body: const Center(
          child: Text(
            "Page not found",
            style: TextStyle(fontSize: 18, color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
