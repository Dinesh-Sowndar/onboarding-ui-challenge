import 'package:flutter/material.dart';
import 'package:flutterdemos/widgets/images.dart';
import 'package:flutterdemos/widgets/pages_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  double responsiveSize(double value, BuildContext context) =>
      ((MediaQuery.of(context).size.width) * value / 4.5) / 100;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!.toDouble();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.cyan[900],
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: [
                PagesBody(
                  widget: mockScreen,
                  title: "Pay with 1-Tap",
                  content: "Your order will be placed instantly",
                ),
                PagesBody(
                  widget: darkScreensGrid,
                  title: "Keep paying via Simpl",
                  content: "Order food, groceries or medicines across your favourite apps",
                ),
                PagesBody(
                  widget: Stack(
                    children: [
                      mockScreen,
                      SizedBox(
                        width: _width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                                color: Colors.black,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 10, 15, 10),
                                child: Text(
                                  "PAY 1,999",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[300],
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: responsiveSize(100, context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  title: "One bill in 15 days",
                  content: "All your purchases gets added up and you pay one Simle bill",
                ),
              ],
            ),
            Positioned(
                top: currentPageValue.floor() == 0
                    ? (_height * 0.3) - (currentPageValue * _height * 0.12)
                    : _height * 0.18,
                right:
                    currentPageValue.floor() == 0 ? currentPageValue * 155 : 0,
                left: currentPageValue.floor() == 0
                    ? 0
                    : ((1 - currentPageValue) * _width * 2) - 155,
                child: Center(
                    child: Image.asset(
                  "assets/simplpay.png",
                  width: currentPageValue < 1
                      ? 330 - (currentPageValue * 170)
                      : 160,
                ))),
            Positioned(
                top: currentPageValue.floor() == 0
                    ? (_height * 0.3) - (currentPageValue * _height * 0.05)
                    : (_height * 0.25),
                right: currentPageValue.floor() == 0
                    ? -currentPageValue * 155
                    : -310,
                left: currentPageValue.floor() == 0
                    ? 0
                    : ((1 - currentPageValue) * _width * 2) - 155,
                child: Center(
                    child: Image.asset(
                  "assets/simplpay.png",
                  width: currentPageValue < 1
                      ? 330 - (currentPageValue * 170)
                      : 160,
                ))),
            Positioned(
                top: currentPageValue.floor() == 0
                    ? (_height * 0.3) + (currentPageValue * _height * 0.2)
                    : _height * 0.5,
                right:
                    currentPageValue.floor() == 0 ? currentPageValue * 155 : 0,
                left: currentPageValue.floor() == 0
                    ? 0
                    : ((1 - currentPageValue) * _width * 2) - 155,
                child: Center(
                    child: Image.asset(
                  "assets/simplpay.png",
                  width: currentPageValue < 1
                      ? 330 - (currentPageValue * 170)
                      : 160,
                ))),
            Positioned(
                top: currentPageValue.floor() == 0
                    ? (_height * 0.3) + (currentPageValue * _height * 0.26)
                    : _height * 0.56,
                right: currentPageValue.floor() == 0
                    ? -currentPageValue * 155
                    : -310,
                left: currentPageValue.floor() == 0
                    ? 0
                    : ((1 - currentPageValue) * _width * 2) - 155,
                child: Center(
                    child: Image.asset(
                  "assets/simplpay.png",
                  width: currentPageValue < 1
                      ? 330 - (currentPageValue * 170)
                      : 160,
                ))),
            Positioned(
                top: currentPageValue.floor() >= 1
                    ? _height * 0.11 + ((currentPageValue - 1) * _height * 0.1)
                    : _height * 0.11,
                right: currentPageValue.floor() >= 1
                    ? 155 * (2 - currentPageValue)
                    : (currentPageValue - 1) * _width,
                left: currentPageValue.floor() >= 1
                    ? 0
                    : ((1 - currentPageValue) * _width) - 155,
                child: Center(
                    child: Image.asset("assets/onboarding_merchant1.png",
                        width: 100))),
            Positioned(
                top: currentPageValue.floor() >= 1
                    ? _height * 0.11 + ((currentPageValue - 1) * _height * 0.15)
                    : _height * 0.11,
                right: currentPageValue.floor() >= 1
                    ? 0
                    : (currentPageValue - 1) * _width,
                left: currentPageValue.floor() >= 1
                    ? 155 * (2 - currentPageValue)
                    : ((1 - currentPageValue) * _width) + 155,
                child: Center(
                    child: Image.asset("assets/onboarding_merchant2.png",
                        width: 90))),
            Positioned(
                top: currentPageValue.floor() >= 1
                    ? _height * 0.46 - ((currentPageValue - 1) * _height * 0.15)
                    //  _height * currentPageValue * 0.46
                    : _height * 0.46,
                right: currentPageValue.floor() >= 1
                    ? 155 * (2 - currentPageValue)
                    : (currentPageValue - 1) * _width,
                left: currentPageValue.floor() >= 1
                    ? 0
                    : ((1 - currentPageValue) * _width) - 155,
                child: Center(
                    child: Image.asset("assets/onboarding_merchant3.png",
                        width: 90))),
            Positioned(
                top: currentPageValue.floor() >= 1
                    ? _height * 0.47 - ((currentPageValue - 1) * _height * 0.11)
                    : _height * 0.47,
                right: currentPageValue.floor() >= 1
                    ? 0
                    : (currentPageValue - 1) * _width,
                left: currentPageValue.floor() >= 1
                    ? 155 * (2 - currentPageValue)
                    : ((1 - currentPageValue) * _width) + 155,
                child: Center(
                    child: Image.asset("assets/onboarding_merchant4.png",
                        width: 70))),
            Positioned(
              right: 0,
              left: 0,
              bottom: 20,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: Colors.white,
                    spacing: responsiveSize(8, context),
                    dotColor: Colors.white.withOpacity(0.5),
                    dotWidth: responsiveSize(9, context),
                    dotHeight: responsiveSize(9, context),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
