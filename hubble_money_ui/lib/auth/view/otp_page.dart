import 'package:flutter/material.dart';
import 'package:hubble_money_ui/auth/auth.dart';
import 'package:hubble_money_ui/gen/assets.gen.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
              Assets.phone.image(width: 75),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  'Verify phone number',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Text(
                'OTP sent to +91 1234567890',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: NumberFieldWidget(
                  onTap: () {},
                  hintText: 'Enter 6 digit OTP',
                ),
              ),
              const AuthRichTextWidget(
                text1: 'Request another OTP over ',
                text2: 'SMS',
                color2: Colors.blue,
                text3: ' or ',
                text4: 'Whatsapp',
                color4: Colors.green,
                decoration: TextDecoration.none,
                fontSize: 12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
