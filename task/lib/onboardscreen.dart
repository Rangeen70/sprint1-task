import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/registerscreen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _buildOnboardPage(
                image: "assets/images/a.jpg",
                title: 'Discover Beautiful Hotels',
                description: 'Explore and book amazing stays around the world.',
              ),
              _buildOnboardPage(
                image: "assets/images/b.jpg",
                title: 'Hassle-Free Booking',
                description: 'Reserve your perfect stay with just a few taps.',
              ),
              _buildOnboardPage(
                image: "assets/images/c.jpg",
                title: 'Relax & Enjoy',
                description: 'Create unforgettable memories during your stay.',
                isLastPage: true,
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_pageController.page == 2) {
                      // Navigate to RegisterScreen instead of DashboardScreen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    _pageController.hasClients && _pageController.page == 2
                        ? "Get Started"
                        : "Next",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardPage({
    required String image,
    required String title,
    required String description,
    bool isLastPage = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 300),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.indigoAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
