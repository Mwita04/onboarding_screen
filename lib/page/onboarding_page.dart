// This was quite challenging,informative,educational and above all worth it.

//Feel free to update, modify and let me know what comes of this.

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/page/home_page.dart';
import 'package:onboarding_screen/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'A reader lives a thousand lives',
              body: 'The man who never reads lives only once.',
              image: buildImage('assets/ebook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Featured Books',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/readingbook.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Simple UI',
              body: 'For enhanced reading experience',
              image: buildImage('assets/manthumbs.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Today a reader, tomorrow a leader',
              body: 'Start your journey',
              footer: ButtonWidget(
                text: 'Start Reading',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/learn.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print(
              'Page $index selected'), // prints users screen activity on debug console
          globalBackgroundColor: Colors.blue[
              400], //Sets primary color to be used at the far left and right
          skipFlex: 0, // Gives the Skip and Next icons spacing
          nextFlex: 0,
          isProgressTap: false, // restricts swipes using bubbles
          isProgress:
              true, // Make the bubbles appear or disappear from the progress bar
          showNextButton: true, // Makes the Next button appear and disappear
          //freeze: true, // Restricts User swipe screen
          animationDuration: 800,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

// For the dots at the bpttom of the screen.
  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors
            .black, // Sets Color For the current page dot/bubble at the bottom
        size: Size(8, 8), // Change size of the dots to your preference
        activeSize: Size(15,
            10), // Changes size for the current page dot/buble at the bottom
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
