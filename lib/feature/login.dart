import 'package:flutter/material.dart';
import 'package:training/component/custom_Text.dart';
import 'package:training/component/custom_button.dart';
import 'package:training/component/gap.dart';
import 'package:training/component/text_field_widget.dart';
import 'package:training/data/local_keys.dart';
import 'package:training/feature/sign_up.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(height: 50.0),
                _welcome,
                const Gap(height: 15.0),
                _welcomeIcon,
                const _LoginForm(),
                const Gap(height: 20.0),
                _socialNetwork,
                const Gap(height: 25.0),
                _signUp(context)
              ],
            )),
      ),
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

  Widget get _welcome {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(height: 10.0),
        CustomText(
            text: LocaleKeys.welcome,
            size: 18.0,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        Gap(height: 5.0),
        CustomText(text: LocaleKeys.loginHint, color: Colors.black),
      ],
    );
  }

  Widget get _socialNetwork {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialIcon('https://freesvg.org/img/1534129544.png'),
        const Gap.h(width: 20),
        _socialIcon(
            'https://icon-library.com/images/facebook-icon-images/facebook-icon-images-2.jpg')
      ],
    );
  }

  Widget _socialIcon(String url) {
    return SizedBox(
      width: 50,
      height: 50,
      child: CircleAvatar(
        radius: 180,
        backgroundColor: Colors.white,
        child: Image.network(url),
      ),
    );
  }

  Widget _signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(text: LocaleKeys.haveNoAccount),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SignUpScreen()));
          },
          child: const CustomText(
            text: LocaleKeys.signUp,
            color: Color(0xff7b4cfd),
          ),
        )
      ],
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Gap(height: 50.0),
          const TextFiledWidget(
              label: LocaleKeys.email, hint: LocaleKeys.emailHint),
          const Gap(height: 5.0),
          const TextFiledWidget(
              isSecure: true,
              label: LocaleKeys.password,
              hint: LocaleKeys.passwordHint),
          const Gap(height: 10.0),
          _rememberForgetRow,
          const Gap(height: 18.0),
          CustomButton(onPress: () {}, text: LocaleKeys.login)
        ],
      ),
    );
  }

  Widget get _rememberForgetRow {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
              checkColor: const Color(0xff7b4cfd),
            ),
            const CustomText(text: LocaleKeys.remember)
          ],
        ),
        const Spacer(),
        const CustomText(text: LocaleKeys.forgetPass)
      ],
    );
  }
}