import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/dashboard/dashboard_bloc.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<DashboardBloc>().add(const Started());
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: CustomAppBar(
            bagroundColor: Colors.transparent,
            title: Image.asset(
              'assets/images/title.png',
              width: size.width * 0.4,
            ),
            trailing: InkWell(
              onTap: () {
                logout(context);
              },
              child: const SizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  Iconsax.logout_1,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.width * 0.6,
            child: CarouselSlider(
              items: [
                QuoteContainer(
                  size: size,
                  quote: '"Employees are the heart of\n any business."',
                  quoteBy: ' - Richard Branson',
                  bgColor: const Color.fromARGB(255, 2, 66, 95),
                ),
                QuoteContainer(
                  size: size,
                  quote: '"A happy employee is a \nproductive employee."',
                  quoteBy: ' - Dale Carnegie',
                  bgColor: const Color.fromARGB(255, 7, 99, 175),
                ),
                QuoteContainer(
                  size: size,
                  quote: '"Employee engagement is the\n key to success."',
                  quoteBy: ' - Gallup',
                  bgColor: const Color.fromARGB(255, 49, 125, 224),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                viewportFraction: 0.8,
              ),
            ),
          ),
          const TotalEmployesCountSection(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PendingApplicationCountBox(
                        count: state.totalProAppli,
                        type: 'Profile registrations'),
                    kWidthTen,
                    PendingApplicationCountBox(
                        type: 'Leave Application', count: state.totalLeaveAppli)
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class PendingApplicationCountBox extends StatelessWidget {
  const PendingApplicationCountBox({
    super.key,
    required this.type,
    required this.count,
  });
  final String type;
  final int count;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 4,
      child: Container(
        height: size.width * 0.4,
        width: size.width * 0.408,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhitebackground,
        ),
        child: Stack(
          children: [
            Positioned(
                bottom: 10,
                left: 10,
                child: Image.asset(
                  'assets/images/application.png',
                  height: size.width * 0.08,
                )),
            SizedBox(
              height: size.width * 0.4,
              width: size.width * 0.408,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pending\n$type \ncount',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text('$count',
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TotalEmployesCountSection extends StatelessWidget {
  const TotalEmployesCountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 4,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhitebackground,
              ),
              height: size.width * 0.4,
              width: size.width * 0.85,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: Image.asset(
                      'assets/images/employees.png',
                      height: size.width * 0.15,
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.4,
                    width: size.width * 0.85,
                    child: BlocBuilder<DashboardBloc, DashboardState>(
                      builder: (context, state) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Total Number of Employees',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            kHeightTen,
                            Text(
                              '${state.totalNoEmps}',
                              style: const TextStyle(
                                  color: customPrimaryColor,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuoteContainer extends StatelessWidget {
  const QuoteContainer({
    super.key,
    required this.size,
    required this.quote,
    required this.quoteBy,
    required this.bgColor,
  });

  final Size size;
  final String quote;
  final String quoteBy;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8.0),
      elevation: 4,
      child: Container(
        width: size.width * 0.8,
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kheightTwenty,
            Text(
              quote,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    quoteBy,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
