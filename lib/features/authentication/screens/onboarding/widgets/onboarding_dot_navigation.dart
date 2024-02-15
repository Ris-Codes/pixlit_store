import 'package:flutter/material.dart';
import 'package:pixlit_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:pixlit_store/ultils/constants/colors.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';
import 'package:pixlit_store/ultils/device/device_utility.dart';
import 'package:pixlit_store/ultils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? TColors.light : TColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
