import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.dashboard,
              size: 100,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome to the Dashboard!',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            const Text(
              'This is your dashboard where you can manage your settings and preferences.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
