import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/campaign_data.dart';
import 'package:jhandgaon_guide/guide/campaign_view.dart';
import 'package:jhandgaon_guide/guide/guide_data.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

class GuideView extends StatelessWidget {
  const GuideView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> campaignWidgets = [];
    List<Widget> indexButtons = [];
    List<Widget> playerManifestWidgets = [];
    List<Widget> directorGuidelinesWidgets = [];
    final introKey = GlobalKey();
    final jhandgaonIntroKey = GlobalKey();
    final playerManifestoKey = GlobalKey();
    final directorsGuidelinesKey = GlobalKey();
    for (var element in Campaigns.campaigns) {
      CampaignView campaign = CampaignView(
        campaignInfo: element,
      );
      campaignWidgets.add(
        Padding(
          padding: const EdgeInsets.all(20),
          child: campaign,
        ),
      );

      indexButtons.add(
        TextButton(
          onPressed: (() {
            Scrollable.ensureVisible(element.campaignKey.currentContext!);
          }),
          child: Text(element.name),
        ),
      );

      indexButtons.add(
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextButton(
            onPressed: (() {
              Scrollable.ensureVisible(element.charactersKey.currentContext!);
            }),
            child: const Text('Characters'),
          ),
        ),
      );

      indexButtons.add(
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: TextButton(
            onPressed: (() {
              Scrollable.ensureVisible(element.storyKey.currentContext!);
            }),
            child: const Text('Story'),
          ),
        ),
      );
    }

    Guide.playerManifesto.forEach(
      (key, value) {
        playerManifestWidgets.add(
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key,
                  style: CustomTheme.theme1.textTheme.headline3,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  value,
                  style: CustomTheme.theme1.textTheme.bodyText1,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        );
      },
    );
    Guide.directorGuidelines.forEach(
      (key, value) {
        directorGuidelinesWidgets.add(
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key,
                  style: CustomTheme.theme1.textTheme.headline3,
                  textAlign: TextAlign.justify,
                ),
                Text(
                  value,
                  style: CustomTheme.theme1.textTheme.bodyText1,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        );
      },
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.7,
                    image: AssetImage('assets/images/paper-texture.png',
                        package: 'jhandgaon_guide'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: SizedBox(
                  width: 800,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Text(
                            'Welcome To Jhandgaon',
                            style: CustomTheme.theme1.textTheme.headline1,
                            textAlign: TextAlign.center,
                          ),
                        )),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'Content',
                              style: CustomTheme.theme1.textTheme.headline2,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: (() {
                                  Scrollable.ensureVisible(
                                      introKey.currentContext!);
                                }),
                                child: const Text('Introduction'),
                              ),
                              TextButton(
                                onPressed: (() {
                                  Scrollable.ensureVisible(
                                      jhandgaonIntroKey.currentContext!);
                                }),
                                child: const Text('Jhandgaon Intro'),
                              ),
                              ...indexButtons,
                              TextButton(
                                onPressed: (() {
                                  Scrollable.ensureVisible(
                                      playerManifestoKey.currentContext!);
                                }),
                                child: const Text('Player Manifesto'),
                              ),
                              TextButton(
                                onPressed: (() {
                                  Scrollable.ensureVisible(
                                      directorsGuidelinesKey.currentContext!);
                                }),
                                child: const Text('Director Guidelines'),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Intro',
                            style: CustomTheme.theme1.textTheme.headline2,
                            key: introKey,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                Guide.INTRO_TEXT,
                                style: CustomTheme.theme1.textTheme.bodyText1,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: const Image(
                            image: AssetImage(
                                'assets/images/jhandgaon_text_logo.png',
                                package: 'jhandgaon_guide'),
                          ),
                          key: jhandgaonIntroKey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            Guide.JHANDGAON_RPG_INTRO,
                            style: CustomTheme.theme1.textTheme.bodyText1,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image(
                            image: AssetImage(
                              Guide.JHANDGAON_IMAGE,
                              package: 'jhandgaon_guide',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        ...campaignWidgets,
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Player Manifesto',
                            style: CustomTheme.theme1.textTheme.headline2,
                            key: playerManifestoKey,
                          ),
                        ),
                        ...playerManifestWidgets,
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Director Guidelines',
                            style: CustomTheme.theme1.textTheme.headline2,
                            key: directorsGuidelinesKey,
                          ),
                        ),
                        ...directorGuidelinesWidgets,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                iconSize: 40,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
