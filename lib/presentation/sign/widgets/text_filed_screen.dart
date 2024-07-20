import 'package:flutter/material.dart';

class TextFiledScreen extends StatelessWidget {
  const TextFiledScreen({
    required this.hintText,
    this.isPassword = false,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    required this.name,
    super.key,
  });

  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            name,
            style:const TextStyle(
                fontSize: 16,
                color: Color(0xFF1A1B1C),
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 9,
          ),
          SizedBox(
            width: 355,
            height: 48,
            child: TextFormField(
              controller: controller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Tên đăng nhập hoặc mật khẩu ko đúng';
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              style: const TextStyle(fontSize: 16, color: Color(0xFF1A1B1C)),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1A1B1C),
                ),
                fillColor: const Color(0xFFFFFFFF),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: const Color(0xFFFFFFFF),
                    width: 1,
                  ),
                ),
                suffixIcon: suffixIcon,
              ),
              obscureText: isPassword,
              keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
