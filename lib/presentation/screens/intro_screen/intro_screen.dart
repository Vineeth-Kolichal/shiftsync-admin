import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/util/constants/shared_preferences_key_names/shared_preferences_key_names.dart';
import 'package:shiftsync_admin/presentation/widgets/background_stack.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: BackgroundStack(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LottieBuilder.asset(
            'assets/lottie_jsons/intro.json',
            height: size.width * 0.5,
            width: size.width * 0.7,
          ),
          kheightTwenty,
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Optimize',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
              Text(
                'Workers',
                style: TextStyle(
                  color: kSkyBlueColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          kHeightTen,
          const Text(
            'HR management easly,Organize\nYour daily routine easly',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: size.width * 0.6,
            child: SubmitButton(
              label: 'Get Stardted',
              onPressed: () async {
                Navigator.of(context).pushReplacementNamed('/sign_in');
                final shared = await SharedPreferences.getInstance();
                await shared.setBool(newUser, false);
              },
            ),
          )
        ],
      ),
    ));
  }
}
