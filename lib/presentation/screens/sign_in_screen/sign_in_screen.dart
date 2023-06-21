import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/bloc/admin_sign_in_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/cubit/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:shiftsync_admin/bussiness_logic/cubit/password_visibility/password_visibility_cubit.dart';
import 'package:shiftsync_admin/core/colors/background_colors.dart';
import 'package:shiftsync_admin/core/colors/common_colors.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/data/models/admin_sign_in_model/admin_sign_in_model.dart';
import 'package:shiftsync_admin/presentation/widgets/background_stack.dart';
import 'package:shiftsync_admin/presentation/widgets/sign_in_text_form_field.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocListener(
      listeners: [
        BlocListener<AdminSignInBloc, AdminSignInState>(
          listener: (context, state) {
            if (state is AdminSignInResponseState) {
              if (state.adminSignInResponseModel.status == 200) {
                // this snackbar will show if authentication is successfull
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(milliseconds: 1000),
                    backgroundColor: Colors.green,
                    content: Text(toBeginningOfSentenceCase(
                            state.adminSignInResponseModel.message) ??
                        'Successfully logged in'),
                  ),
                );
                Future.delayed(const Duration(milliseconds: 1500), () {
                  Navigator.of(context).pushReplacementNamed('/home_screen');
                });
              } else if (state.adminSignInResponseModel.status == 404) {
                //This snakbar will show if any error orrcured
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('Something went wrong'),
                  ),
                );
              } else {
                //this snack bar will show if user name or password are not correct
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(toBeginningOfSentenceCase(
                            state.adminSignInResponseModel.message) ??
                        'Something error'),
                  ),
                );
              }
            }
          },
        ),
        BlocListener<InternetConnectionCheckCubit,
            InternetConnectionCheckState>(
          listener: (context, state) {
            if (state is InternetDisconnected) {
              showDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                      title: const Text('Network error'),
                      content: const Text('Please turn on mobile data or wifi'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Close'))
                      ],
                    );
                  }));
            }
          },
        ),
      ],
      child: Scaffold(
        body: BackgroundStack(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kheightTwenty,
                LottieBuilder.asset(
                  'assets/lottie_jsons/login.json',
                  height: size.width * 0.65,
                  width: size.width * 0.85,
                ),
                kHeightTen,
                const Text('Sign In to'),
                kHeightFive,
                Image.asset(
                  'assets/images/title.png',
                  width: size.width * 0.4,
                ),
                const Text('Admin'),
                kheightTwenty,
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      child: Text('Please fill the credentials'),
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: SizedBox(
                    width: size.width * 0.9,
                    child: Column(
                      children: [
                        SignInTextFormField(
                          keyboardType: TextInputType.name,
                          controller: userNameController,
                          obscureText: false,
                          icon: Iconsax.user,
                          hintText: 'User name',
                          suffix: null,
                          formKey: _formKey,
                        ),
                        kHeightTen,
                        BlocProvider(
                          create: (context) => PasswordVisibilityCubit(),
                          child: SizedBox(
                            child: BlocBuilder<PasswordVisibilityCubit,
                                PasswordVisibilityState>(
                              builder: (context, state) {
                                return SignInTextFormField(
                                  icon: Iconsax.lock_1,
                                  hintText: 'Password',
                                  suffix: InkWell(
                                    onTap: () {
                                      context
                                          .read<PasswordVisibilityCubit>()
                                          .visiblepassword();
                                    },
                                    child: Icon(
                                      state.showPassword
                                          ? Iconsax.eye
                                          : Iconsax.eye_slash,
                                      color: iconBlackColor,
                                    ),
                                  ),
                                  obscureText: state.showPassword,
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  formKey: _formKey,
                                );
                              },
                            ),
                          ),
                        ),
                        kHeightTen,
                        kheightTwenty,
                        BlocBuilder<AdminSignInBloc, AdminSignInState>(
                          builder: (context, state) {
                            if (state.isLoading) {
                              return LoadingAnimationWidget.inkDrop(
                                color: customPrimaryColor,
                                size: 25,
                              );
                            }
                            return SubmitButton(
                              label: 'Sing In',
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AdminSignInBloc>().add(
                                      AdminSignIn(
                                          adminSignInModel: AdminSignInModel(
                                              username: userNameController.text
                                                  .trim(),
                                              password: passwordController.text
                                                  .trim())));
                                  // Navigator.of(context)
                                  //     .pushReplacementNamed('/home_screen');
                                }
                              },
                            );
                          },
                        ),
                        kHeightTen,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
