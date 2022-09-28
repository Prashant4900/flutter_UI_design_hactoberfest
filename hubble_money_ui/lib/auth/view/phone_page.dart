import 'package:flutter/material.dart';
import 'package:hubble_money_ui/auth/auth.dart';
import 'package:hubble_money_ui/gen/assets.gen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.logo.image(width: 65),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Welcome to Hubble',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Text(
                'Continue with mobile number',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: NumberFieldWidget(
                  hintText: 'Mobile Number',
                  onTap: () {
                    Navigator.of(context).push<void>(
                      MaterialPageRoute(
                        builder: (context) => const OTPScreen(),
                      ),
                    );
                  },
                ),
              ),
              const AuthRichTextWidget(
                text1: 'By continuing I agree to the ',
                text2: 'Terms & Conditions',
                text3: ' and ',
                text4: 'Privacy Policy',
              )
            ],
          ),
        ),
      ),
    );
  }
}
