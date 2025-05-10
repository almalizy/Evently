import 'package:evently/routing/app-routes.dart';
import 'package:evently/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          PageViewModel(
            bodyWidget: Text('data'),
            image: Image.asset(
              AppImages.logo,
              height: 171,
              width: 291,
            ),
            titleWidget: Image.asset(
              AppImages.firstImage,
              height: 338,
              width: 378,
            ),
            // useScrollView: false
          ),
          PageViewModel(
            bodyWidget: Text('data'),
            image: Image.asset(
              AppImages.logo,
              height: 171,
              width: 291,
            ),
            titleWidget: Image.asset(
              AppImages.secondImage,
              height: 338,
              width: 378,
            ),
            // useScrollView: false
          ),
          PageViewModel(
            bodyWidget: Text('data'),
            image: Image.asset(
              AppImages.logo,
              height: 171,
              width: 291,
            ),
            titleWidget: Image.asset(
              AppImages.thirdImage,
              height: 338,
              width: 378,
            ),
            // useScrollView: false
          ),
          PageViewModel(
            bodyWidget: Text('data'),
            image: Image.asset(
              AppImages.logo,
              height: 171,
              width: 291,
            ),
            titleWidget: Image.asset(
              AppImages.fourthImage,
              height: 338,
              width: 378,
            ),
            // useScrollView: false
          ),
          PageViewModel(
            bodyWidget: Text('data'),
            image: Image.asset(
              AppImages.logo,
              height: 171,
              width: 291,
            ),
            titleWidget: Image.asset(
              AppImages.fifthImage,
              height: 338,
              width: 378,
            ),
            // useScrollView: false
          ),
        ],
        showSkipButton: true,
        showNextButton: true,
        skip: const Text("Skip"),
        done: const Text("Finish"),
        showBackButton: true,
        back: const Icon(Icons.arrow_back_rounded),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: const DotsDecorator(
           activeSize: Size(13, 7),
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        onDone: () {
          Navigator.pushReplacementNamed(context, RoutesNames.login);
        });

  }
}
