import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shiftsync_admin/core/constants/shared_preferences_key_names/shared_preferences_key_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final shared = await SharedPreferences.getInstance();
      final isNewUser = shared.getBool(newUser);
      await Future.delayed(const Duration(milliseconds: 3000), () {
        Navigator.of(context).pushReplacementNamed(
            (isNewUser == true || isNewUser == null) ? '/intro' : '/sign_in');
      });
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/shiftsync.png',
              height: size.width * 0.55,
              width: size.width * 0.55,
            ),
            const Text(
              'Admin',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
