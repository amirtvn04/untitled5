import 'package:untitled5/router/app_router.dart';
import 'data/services/service_locator.dart';
import 'package:untitled5/config/theme/app_theme.dart';
import 'package:untitled5/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServiceLocator();
  runApp(const ChatApp());
}
d
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'amir_chatApp',
      debugShowCheckedModeBanner: false,
      navigatorKey: getIt<AppRouter>().navigatorKey,
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}
