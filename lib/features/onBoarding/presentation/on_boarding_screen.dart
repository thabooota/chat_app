import 'package:chat_app/core/constant/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.originalBlack,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: ColorManager.primaryColor,
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                height: 250,
                child: SvgPicture.asset('assets/onBoarding.svg',)),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Stay connected with your friends and family', style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.fade,
            ),
            textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
              child: ListTile(
                title: const Text('Secure, private messaging', style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.fade,
                ),
              ),
                leading: SvgPicture.asset(
                  'assets/Vector.svg',
                ),
              ),
            ), ),
          const SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: MaterialButton(
              height: 60,
              minWidth: double.infinity,
              color: ColorManager.originalWhite,
                onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
              child: const Text('Get Started', style: TextStyle(
                color: ColorManager.originalBlack,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.fade,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
