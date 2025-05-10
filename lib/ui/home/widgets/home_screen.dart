import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselItem {
  final String image;
  final String text;
  CarouselItem(this.image, this.text);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController =
  CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final List<CarouselItem> carouselItems = [
      CarouselItem(AppImages.firstImage, 'Earth1'),
      CarouselItem(AppImages.secondImage, 'Earth2'),
      CarouselItem(AppImages.thirdImage, 'Earth3'),
      CarouselItem(AppImages.fourthImage, 'Earth4'),
      CarouselItem(AppImages.fifthImage, 'Earth5'),
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 339.h, // Adjusted height
                width: 342.w,
                child: CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    height: 319.h,
                    viewportFraction: 0.8,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items:
                  carouselItems.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.only(
                              top: 10,bottom: 60
                          ).r,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item.image),
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                left: 16.w,
                top: 300.h,
                child: CircleAvatar(
                  backgroundColor: AppColors.red,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 25),
                    onPressed: () {
                      if (_currentIndex > 0) {
                        _currentIndex--;
                      } else {
                        _currentIndex = carouselItems.length - 1;
                      }
                      _carouselController.animateToPage(_currentIndex);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 300.h,
                child: Text(
                  carouselItems[_currentIndex].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 16.w,
                top: 300.h,
                child: CircleAvatar(
                  backgroundColor: AppColors.red,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      if (_currentIndex < carouselItems.length - 1) {
                        _currentIndex++;
                      } else {
                        _currentIndex = 0;
                      }
                      _carouselController.animateToPage(_currentIndex);
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          // Center(
          //   child: SizedBox(
          //     width: 342.w,
          //     child: CustomElevatedButton(
          //       content: "Explore ${carouselItems[_currentIndex].text}",
          //       onPress:
          //           () => Navigator.pushReplacementNamed(
          //         context,
          //         RoutesNames.planetDetails,
          //         arguments: carouselItems[_currentIndex].text,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
