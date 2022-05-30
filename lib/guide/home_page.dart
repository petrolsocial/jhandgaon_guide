import 'package:flutter/material.dart';
import 'package:jhandgaon_guide/guide/campaign_data.dart';
import 'package:jhandgaon_guide/guide/campaign_view.dart';
import 'package:jhandgaon_guide/guide/guide_data.dart';
import 'package:jhandgaon_guide/themes/custom_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> campaignWidgets = [];

    for (var element in Campaigns.campaigns) {
      campaignWidgets.add(CampaignView(campaignInfo: element));
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(100),
                child: Center(
                    child: Text('Welcome To Jhandgaon',
                        style: CustomTheme.theme1.textTheme.headline1)),
              ),
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
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Jhandgaon RPG',
                  style: CustomTheme.theme1.textTheme.headline2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Text(
                  Guide.JHANDGAON_RPG_INTRO,
                  style: CustomTheme.theme1.textTheme.bodyText1,
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
    );
  }
}
