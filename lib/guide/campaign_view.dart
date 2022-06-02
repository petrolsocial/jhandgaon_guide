import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/campaign_data.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

class CampaignView extends StatelessWidget {
  final CampaignInfo campaignInfo;

  const CampaignView({Key? key, required this.campaignInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Center(
              child: Text(
                campaignInfo.name,
                style: CustomTheme.theme1.textTheme.headline2,
                textAlign: TextAlign.center,
                key: campaignInfo.campaignKey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Center(
              child: Image(image: AssetImage(
                campaignInfo.image, 
                package: 'jhandgaon_guide',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
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
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
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
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
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
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
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
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
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
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              'Characters: ',
              style: CustomTheme.theme1.textTheme.headline4,
              textAlign: TextAlign.justify,
              key: campaignInfo.charactersKey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getCharacterList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Text(
              'Story: ',
              style: CustomTheme.theme1.textTheme.headline4,
              textAlign: TextAlign.justify,
              key: campaignInfo.storyKey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getPlotDetails(),
            ),
          ),
        ],
      ),
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
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: character.tokenImage,
              fit: BoxFit.cover,
              height: 120,
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
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
                    textAlign: TextAlign.justify,
                  ),
                  RichText(
                    text: TextSpan(
                      style: CustomTheme.theme1.textTheme.bodyText1,
                      children: [
                        const TextSpan(
                          text: 'Traits: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: character.traits,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
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
      Widget plotWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(head, style: CustomTheme.theme1.textTheme.headline4),
          Text(
            description,
            style: CustomTheme.theme1.textTheme.bodyText1,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 10),
        ],
      );
      plotDetails.add(plotWidget);
    });
    return plotDetails;
  }
}
