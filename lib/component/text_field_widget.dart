import 'package:flutter/material.dart';
import 'package:training/component/gap.dart';

class TextFiledWidget extends StatelessWidget {
  const TextFiledWidget(
      {super.key,
      this.controller,
      this.prefixIcon,
      this.validator,
      this.isSecure = false,
      this.label = '',
      this.hint = ''});
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String label;
  final String hint;
  final bool isSecure;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Gap.h(width: 5),
            Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.w500, color: Colors.grey),
            ),
          ],
        ),
        const Gap(height: 2.0),
        Card(
          shadowColor: Colors.grey,
          elevation: 3.5,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: TextFormField(
            controller: controller,
            validator: validator,
            obscureText: isSecure,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
                prefixIcon: prefixIcon,
                prefixIconColor: Colors.tealAccent),
          ),
        ),
      ],
    );
  }
}