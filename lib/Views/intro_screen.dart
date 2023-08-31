import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:w4u/Utils/colors.dart';
import 'package:w4u/Utils/images.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              // color: Colors.red,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(Customeimages.intro))),
            ),
            Positioned(
                // top: 500,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: AppColors.whiteColor.withOpacity(.3),
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Better Life\nWith Better Body",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "We are here to provide solutions to\nkeep your body ideal and maintain\nyour health",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SliderButton(
                        action: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (_) => const HomeView()

                          //     ));
                        },

                        ///Put label over here
                        // alignLabel: Alignment.centerRight,

                        label: const Text(
                          'Swipe and workout right now',
                          style: TextStyle(
                              color: Color(0xff4a4a4a),
                              fontWeight: FontWeight.w600,
                            ),
                        ),
                        icon: Icon(
                          Icons.arrow_forward,
                          color: AppColors.primaryColor,
                        ),
                        // dismissible: false,

                        ///Change All the color and size from here.
                        width: MediaQuery.of(context).size.width,
                        radius: 50,
                        height: 60,
                        buttonColor: AppColors.whiteColor,
                        backgroundColor: AppColors.primaryColor,
                        highlightedColor: AppColors.whiteColor,
                        baseColor: AppColors.whiteColor,
                        // shimmer: false,
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
