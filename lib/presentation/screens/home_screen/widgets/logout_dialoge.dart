import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/persistent_cookiejar.dart';

void logout(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Confirm Logout'),
          content: const Text('Are you sure want to logout'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: customPrimaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(color: customPrimaryColor),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                cookieJar.deleteAll();
                //final shared = await SharedPreferences.getInstance();
                //await shared.remove(cookie);
                //await shared.remove(pin);
                Future.delayed(const Duration(microseconds: 100), () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/sign_in', (route) => false);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: customPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        );
      });
}
