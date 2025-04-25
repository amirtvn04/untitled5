import 'package:flutter/material.dart';
import 'package:untitled5/data/services/service_locator.dart';
import 'package:untitled5/logic/cubits/auth/auth_cubit.dart';
import 'package:untitled5/presentation/screens/auth/login_screen.dart';
import 'package:untitled5/router/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap:() async {
              await getIt<AuthCubit>().signOut;
              getIt<AppRouter>().pushAndRemoveUntil(const LoginScreen());
            },
            child: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text("User Is Authenticated!"),
      ),
    );
  }
}
