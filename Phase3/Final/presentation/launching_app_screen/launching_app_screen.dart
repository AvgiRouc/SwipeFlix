import 'package:flutter/material.dart';
import 'package:swipeflix/core/app_export.dart';
import 'package:swipeflix/presentation/homepage_screen/homepage_screen.dart';

class LaunchingAppScreen extends StatelessWidget {
  const LaunchingAppScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Note: Sensitivity is an integer used when you don't want to mess up vertical drag
          int sensitivity = 0;
          if (details.primaryDelta! < -sensitivity) {
            // Right Swipe
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else if (details.primaryDelta! > sensitivity) {
            // Left Swipe
          }
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.blue100,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 52.h,
                top: 128.v,
                right: 52.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 32.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "SwipeFlix",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 64.v),
                  Column(
                    children: [
                      Container(
                        width: 241.h,
                        margin: EdgeInsets.only(
                          left: 13.h,
                          right: 2.h,
                        ),
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Excited to have \nYou here!",
                          textAlign: TextAlign.center,
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Let’s get started!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                          //style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Text(
                        "Do your First swipe here",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ));
  }
}
