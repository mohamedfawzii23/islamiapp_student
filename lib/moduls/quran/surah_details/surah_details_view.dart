import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/layout/home_layout.dart';

class SurahDetailView extends StatefulWidget {
  SurahDetailView({super.key});

  static const String routeName = 'Sura_Detail';

  @override
  State<SurahDetailView> createState() => _SurahDetailViewState();
}

class _SurahDetailViewState extends State<SurahDetailView> {
  String versContent = "";
  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as SurahDetails;
    if (versContent.isEmpty) readFile(args.suraIndex);
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_light.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("اسلامي"),
            leading: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeLayout.routeName);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                color: Colors.black),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            margin:
                const EdgeInsets.only(top: 20, bottom: 30, right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color(0xffF8F8F8).withOpacity(0.8),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'سورة ${args.suraName}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.play_circle,
                        size: 40,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: theme.primaryColor,
                  thickness: 1.5,
                  height: 5,
                  indent: 40,
                  endIndent: 20,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10, left: 8),
                    child: ListView.builder(
                      itemBuilder: (context, index) => Text(
                        versList[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      itemCount: versList.length,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  readFile(int index) async {
    String text = await rootBundle.loadString('assets/files/${index + 1}.txt');
    versContent = text;
    versList = versContent.split('\n');

    setState(() {});
  }
}

class SurahDetails {
  String suraName;

  SurahDetails(this.suraName, this.suraIndex);

  int suraIndex;
}
