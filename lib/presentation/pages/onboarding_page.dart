import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/onboarding.png'),
                      fit: BoxFit.cover)),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Premium cars. \nEnjoy the luxury",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Premium and prestige car daily rental. \nExperince the thrill at a lower price.",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 320,
                  height: 54,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => CarListScreen()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white),
                      child: const Text(
                        'let\'s Go',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
