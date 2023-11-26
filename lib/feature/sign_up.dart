import 'package:flutter/material.dart';
import 'package:training/component/custom_Text.dart';
import 'package:training/component/custom_button.dart';
import 'package:training/component/gap.dart';
import 'package:training/component/text_field_widget.dart';
import 'package:training/data/local_keys.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(height: 20.0),
                _signUp,
                const Gap(height: 15.0),
                _welcomeIcon,
                const _SignUpForm(),
                const Gap(height: 25.0),
                _signIn(context)
              ],
            )),
      ),
    );
  }

  Widget get _signUp {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: LocaleKeys.signUp,
            size: 22.0,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        Gap(height: 5.0),
        CustomText(text: LocaleKeys.signUpHint, color: Colors.black),
      ],
    );
  }

  Widget get _welcomeIcon {
    return const Center(
      child: Icon(
        Icons.shopify_rounded,
        color: Color(0xff7b4cfd),
        size: 70,
      ),
    );
  }

  Widget _signIn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: LocaleKeys.alreadyHaveAccount),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CustomText(
            text: LocaleKeys.signIn,
            color: Color(0xff7b4cfd),
          ),
        )
      ],
    );
  }
}

class _SignUpForm extends StatelessWidget {
  const _SignUpForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Gap(height: 20.0),
          const TextFiledWidget(
              label: LocaleKeys.name, hint: LocaleKeys.nameHint),
          const Gap(height: 5.0),
          const TextFiledWidget(
              label: LocaleKeys.email, hint: LocaleKeys.pleaseEnterEmail),
          const Gap(height: 5.0),
          const TextFiledWidget(
              isSecure: true,
              label: LocaleKeys.password,
              hint: LocaleKeys.pleaseEnterPassword),
          const Gap(height: 18.0),
          CustomButton(onPress: () {}, text: LocaleKeys.signUp)
        ],
      ),
    );
  }
}