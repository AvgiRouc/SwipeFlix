import 'package:flutter/material.dart';
import 'package:swipeflix/core/app_export.dart';
import 'package:swipeflix/widgets/custom_elevated_button.dart';
import 'package:swipeflix/presentation/launching_app_screen/launching_app_screen.dart';

class WelcomingPageScreen extends StatelessWidget {
  const WelcomingPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 68.v),
              CustomImageView(
                imagePath: ImageConstant.imgTelevision,
                height: 58.adaptSize,
                width: 58.adaptSize,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 121.h,
                  margin: EdgeInsets.only(right: 7.h),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "\nWelcome\n\n to\n\nSwipeFlix \n\n\n",
                    textAlign: TextAlign.center,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              CustomElevatedButton(
                width: 143.h,
                text: "START",
                onPressed: () {
                  //Navigator.push(
                    //context, MaterialPageRoute(builder: (context) => launchingAppScreen));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LaunchingAppScreen()),
                  );
                 },
              ),
            ],
          ),
        ),
      ),
    );
  }
}