import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/campaign_data.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

class CampaignView extends StatelessWidget {
  final CampaignInfo campaignInfo;
  const CampaignView({Key? key, required this.campaignInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: Text(campaignInfo.name,
              style: CustomTheme.theme1.textTheme.headline1),
        ),
        Center(
          child: Image.asset(
            campaignInfo.image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: CustomTheme.theme1.textTheme.bodyText1,
              children: [
                const TextSpan(
                  text: 'Campaign aim: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: campaignInfo.aim,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: CustomTheme.theme1.textTheme.bodyText1,
              children: [
                const TextSpan(
                  text: 'Difficulty level: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: campaignInfo.difficultyLevel,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: CustomTheme.theme1.textTheme.bodyText1,
              children: [
                const TextSpan(
                  text: 'Sessions needed to complete: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: campaignInfo.sessionRequired,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: CustomTheme.theme1.textTheme.bodyText1,
              children: [
                const TextSpan(
                  text: 'Flavour: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: campaignInfo.flavour,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RichText(
            text: TextSpan(
              style: CustomTheme.theme1.textTheme.bodyText1,
              children: [
                const TextSpan(
                  text: 'Director Notes: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: campaignInfo.directorNotes,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: getCharacterList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: getPlotDetails(),
          ),
        ),
      ],
    );
  }

  List<Widget> getCharacterList() {
    int count = 0;
    List<Widget> characterList = [];
    for (var character in campaignInfo.characters) {
      count++;
      Widget characterWidget = Container(
        decoration: count % 2 != 0
            ? const BoxDecoration(color: Color.fromARGB(103, 191, 107, 205))
            : null,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(
              character.tokenImage,
              fit: BoxFit.cover,
              height: 120,
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: RichText(
                text: TextSpan(
                  style: CustomTheme.theme1.textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text: character.name + ": ",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: character.description,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
      characterList.add(characterWidget);
    }
    return characterList;
  }

  List<Widget> getPlotDetails() {
    List<Widget> plotDetails = [];
    campaignInfo.plotDetails.forEach((head, description) {
      Widget plotWidget = Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(head, style: CustomTheme.theme1.textTheme.headline3),
            Text(
              description,
              style: CustomTheme.theme1.textTheme.bodyText1,
            ),
          ],
        ),
      );
      plotDetails.add(plotWidget);
    });
    return plotDetails;
  }
}
