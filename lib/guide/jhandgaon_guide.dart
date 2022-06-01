import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/campaign_data.dart';
import 'package:jhandgaon_guide/guide/campaign_view.dart';
import 'package:jhandgaon_guide/guide/guide_data.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

class JhandgaonGuide extends StatelessWidget {
  const JhandgaonGuide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> campaignWidgets = [];

    for (var element in Campaigns.campaigns) {
      campaignWidgets.add(Padding(
        padding: const EdgeInsets.all(40),
        child: CampaignView(campaignInfo: element),
      ));
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.7,
                image: AssetImage('assets/images/paper-texture.png'),
                fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: ListView(
                    children: [],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 800,
                  child: ListView(
                    //use either ScrollablePositionedList or SingleChildScrollView to scroll to specific content
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(50),
                        child: Text(
                          'Welcome To Jhandgaon',
                          style: CustomTheme.theme1.textTheme.headline1,
                          textAlign: TextAlign.center,
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Intro',
                          style: CustomTheme.theme1.textTheme.headline2,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(40),
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
                        padding: const EdgeInsets.all(40),
                        child: Image.asset(
                            'assets/images/jhandgaon_text_logo.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Text(
                          Guide.JHANDGAON_RPG_INTRO,
                          style: CustomTheme.theme1.textTheme.bodyText1,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Image.asset(
                          Guide.JHANDGAON_IMAGE,
                          fit: BoxFit.cover,
                        ),
                      ),
                      ...campaignWidgets,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
