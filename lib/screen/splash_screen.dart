import 'package:cbt_portal/widget/footer.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Theme.of(context).cardColor,
              width: width,
              height: height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width / 1.8,
                    height: height / 1.1,
                    child: Hero(
                      tag: 'hero-splashscreen',
                      child: Image.asset(
                        'assets/logo/lg_logo_rz.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 0.2,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
