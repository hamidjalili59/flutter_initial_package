import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
        ),
      ),
    );
  }
}
