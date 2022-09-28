import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Saving, Rewarded',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),
              Text(
                '''Your active plans will appear here.\nPick a plan to get started.''',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w200,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).primaryColor,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                      color: Colors.black26,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'EXPLORE SAVINGS PLANS',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
