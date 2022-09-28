import 'package:flutter/material.dart';
import 'package:hubble_money_ui/auth/auth.dart';
import 'package:hubble_money_ui/gen/assets.gen.dart';
import 'package:hubble_money_ui/onboarding/onboarding.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _BodyView(),
                _ButtonView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BodyView extends StatelessWidget {
  const _BodyView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Assets.logo.image(width: 65),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Shop smarter.\nShop with Hubble.',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            'No more chasing sales day offers or card offers!',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedCompanyCardWidget(
                  name: 'Myntra',
                  image: Assets.myntra.image(width: 50, height: 50),
                ),
                RoundedCompanyCardWidget(
                  name: 'Croma',
                  image: ColoredBox(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Assets.croma.image(width: 45, height: 45),
                    ),
                  ),
                ),
                RoundedCompanyCardWidget(
                  name: 'Bluestone',
                  image: Assets.bluestone.image(width: 50, height: 50),
                ),
              ],
            ),
          ),
          FeatureTileWidget(
            title: 'Earn 10% on every deposit',
            subtitle: 'Redeem your savings as vouchers anytime.',
            image: Assets.logo.image(width: 50),
          ),
          FeatureTileWidget(
            title: 'Start as low as ₹500/mo',
            subtitle: 'Skip a month or increase deposit? No problem.',
            image: Assets.logo.image(width: 50),
          ),
          FeatureTileWidget(
            title: 'Cancel anytime. 100% refunds',
            subtitle: 'No lock-in commitments. Instant withdrawals 24/7.',
            image: Assets.logo.image(width: 50),
          ),
        ],
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Over 2,00,000+ signups and growing! 🚀',
            style: Theme.of(context).textTheme.caption!.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => const AuthScreen(),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'JOIN THE TRIBE',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.adaptive.arrow_forward,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
