import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class ReadMoreText extends StatelessWidget {
  final String text;
  final int maxLines;
  const ReadMoreText({
    super.key,
    required this.text,
    this.maxLines = 3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final textSpan = TextSpan(
          text: text,
          style: const TextStyle(
            color: AppColors.lightGrey,
          ),
        );

        final textPainter = TextPainter(
          text: textSpan,
          maxLines: maxLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final isTextOverflowing = textPainter.didExceedMaxLines;

        return Stack(
          children: [
            Text(
              text,
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: AppColors.lightGrey,
              ),
            ),
            if (isTextOverflowing)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  color: AppColors.backgroundPrimary,
                  padding: EdgeInsets.only(left: 10),
                  child: TextButton(
                    onPressed: () => showFullTextDialog(context),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Read More',
                      style: TextStyle(
                        fontSize: 15,
                        color: AppColors.lightPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  void showFullTextDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          color: AppColors.lightPrimary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    text,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
