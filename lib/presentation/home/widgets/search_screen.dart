import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    super.key,
  });

  final String hintText;
  final TextInputType keyboardType;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 355,
            height: 48,
            child: TextFormField(
              textInputAction: TextInputAction.search,
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
                prefixIcon: prefixIcon,
              ),
              keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
