import 'package:flutter/material.dart';

class SurahHeader extends StatelessWidget {
  const SurahHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(children: [
      Divider(
        color: theme.primaryColor,
        height: 2,
        thickness: 2,
      ),
      IntrinsicHeight(
        child: Row(
          children: [
            const Expanded(
                child: Center(
                    child: Text("رقم السورة",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )))),
            Expanded(
                child: VerticalDivider(
                    color: theme.primaryColor, thickness: 2, width: 10)),
            const Expanded(
                child: Center(
                    child: Text(
              'اسم السورة',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ))),
          ],
        ),
      ),
      Divider(
        color: theme.primaryColor,
        height: 2,
        thickness: 2,
      )
    ]);
  }
}
