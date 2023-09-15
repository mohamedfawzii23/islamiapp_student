import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran/surah_details/surah_details_view.dart';

class SurahNumber extends StatelessWidget {
  final String suraName;
  final int suraNumber;

  const SurahNumber(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SurahDetailView.routeName,
            arguments: SurahDetails(suraName, suraNumber));
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Center(
                    child: Text(
              '${suraNumber + 1}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ))),
            Expanded(
              child: VerticalDivider(
                width: 5,
                thickness: 2,
                color: theme.primaryColor,
              ),
            ),
            Expanded(
                child: Center(
                    child: Text(suraName,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )))),
          ],
        ),
      ),
    );
  }
}
