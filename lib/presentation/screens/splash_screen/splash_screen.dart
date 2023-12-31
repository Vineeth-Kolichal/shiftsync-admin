import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/persistent_cookiejar.dart';
import 'package:shiftsync_admin/util/constants/shared_preferences_key_names/shared_preferences_key_names.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      //getting cookie list from cookie jar
      final cookies = await cookieJar.loadForRequest(
          Uri.parse('${ApiEndpoints.baseUrl}${ApiEndpoints.signInPoint}'));
      log(cookies.toString());

      final shared = await SharedPreferences.getInstance();
      final isNewUser = shared.getBool(newUser);
      await Future.delayed(const Duration(milliseconds: 3000), () {
        if (isNewUser == true || isNewUser == null) {
          Navigator.of(context).pushReplacementNamed('/intro');
          //checking is there any cookie in cookie jar, if empty navigate to signin page else navigate to homescreen
        } else if (cookies.isEmpty) {
          Navigator.of(context).pushReplacementNamed('/sign_in');
        } else {
          Navigator.of(context).pushReplacementNamed('/home_screen');
        }
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
