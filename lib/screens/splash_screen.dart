import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';
import 'package:todo_app/utils/slider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return  Container(
            color: const Color(0xFF8A9DFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.05,
                ),
                Text(
                  'Manage your\nDaily TO DO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.08,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.5,
                  width: constraints.maxWidth * 0.9,
                  child: Image.asset('assets/p1.png'),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomSlider(color: Color(0xFFFFC727)),
                    SizedBox(
                      width: constraints.maxWidth * 0.06,
                    ),
                    const CustomSlider(color: Color(0xFFFCD873)),
                    SizedBox(
                      width: constraints.maxWidth * 0.06,
                    ),
                    const CustomSlider(color: Color(0xFFFCD873)),
                  ],
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Text(
                  'Without much worry just change\nthings as easy as piece of cake',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: constraints.maxWidth * 0.05,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC00E),
                  ),
                  child: Text(
                    'Create a Note',
                    style: TextStyle(
                      fontSize: constraints.maxWidth * 0.06,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
