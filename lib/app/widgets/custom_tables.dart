import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/theme/colors.dart';
import 'package:houseboat_booking/app/theme/text_styles.dart';

class PaymentDetailsTable extends StatelessWidget {
  final String headeing;
  final List<Map<String, String>> details;
  final VoidCallback? onIconPressed;

  const PaymentDetailsTable({
    super.key,
    required this.headeing,
    required this.details,
    this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          children: [
            TableRow(
              decoration: BoxDecoration(
                color: AppColors.backgroundSecondary,
                border: Border.all(color: AppColors.lightGrey),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              children: [
                _tableHeaderCell(headeing),
                onIconPressed == null
                    ? _tableHeaderCell('')
                    : _tableHeaderIconCell(),
              ],
            ),
          ],
        ),
        Table(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(1),
          },
          border: TableBorder.all(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          children: [
            ...details.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, String> detail = entry.value;

              bool isHighlightedRow = index % 2 == 0;
              bool isLastItem = index == details.length - 1;
              return TableRow(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isLastItem ? 5 : 0),
                    bottomRight: Radius.circular(isLastItem ? 5 : 0),
                  ),
                  color: isHighlightedRow
                      ? AppColors.backgroundSecondary
                      : AppColors.lightPrimary,
                ),
                children: [
                  _tableCell(detail['key']!),
                  _tableCell(detail['value']!),
                ],
              );
            }),
          ],
        ),
      ],
    );
  }

  Widget _tableHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: AppTextStyles.heading,
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _tableHeaderIconCell() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          style: ButtonStyle(
            minimumSize: WidgetStatePropertyAll(const Size(0, 0)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          icon: const Icon(
            Icons.file_download_outlined,
            color: AppColors.textPrimary,
          ),
          tooltip: 'Download Invoice',
          onPressed: onIconPressed,
        ),
      ],
    );
  }

  Widget _tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.start,
      ),
    );
  }
}
