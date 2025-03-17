import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class UploadIDProofWidget extends StatelessWidget {
  final VoidCallback onFileUpload;
  final String title;
  final String? helperText;

  const UploadIDProofWidget({
    super.key,
    required this.onFileUpload,
    required this.title,
    this.helperText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 10),

        // File Upload Box
        Container(
          height: 48,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.lightGrey, width: 1.5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Upload 1 Supported file. Max 10 MB.',
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              FilledButton(
                onPressed: onFileUpload,
                child: Text(
                  'Add File',
                  style: AppTextStyles.button,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        helperText != null
            ? Text(
                helperText!,
                style: AppTextStyles.subtitle,
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
