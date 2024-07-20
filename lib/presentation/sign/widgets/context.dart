import 'package:flutter/material.dart';
import 'package:shoes/constants/constants.dart';

class Context extends StatelessWidget {
  const Context({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Thêm padding để nội dung không chạm vào cạnh màn hình
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center, // Căn giữa nội dung theo chiều ngang
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 273,
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: AppColors.textGray,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center, // Căn giữa nội dung theo chiều ngang
            ),
          ),
        ],
      ),
    );
  }
}
