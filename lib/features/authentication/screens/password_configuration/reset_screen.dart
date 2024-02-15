import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixlit_store/ultils/constants/image_strings.dart';
import 'package:pixlit_store/ultils/constants/sizes.dart';
import 'package:pixlit_store/ultils/constants/text_strings.dart';
import 'package:pixlit_store/ultils/helpers/helper_functions.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image with 60% of screen width
              Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(TTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: const Text(TTexts.done))),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: (){},
                      child: const Text(TTexts.resendEmail))),
                      
            ],
          ),
        ),
      ),
    );
  }
}
