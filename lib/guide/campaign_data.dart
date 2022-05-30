import 'package:jhandgaon_guide/guide/character_data.dart';

class Campaigns {
  static List<CampaignInfo> campaigns = [
    CampaignInfo(
        'The Eagle Gang Avengers',
        'assets/images/eagleboys.png',
        'The heros are erstwhile members of Eagle gang. Their rival, Bichoo gang, has killed their Eagle gang leader and attempts to assassinate our heroes too. Our heroes escape the assassination attempt and embark on a journey of revenge to intercept a big drug run by Bichoo gang, kill the Bichoo gang leader in process and also regain control over Jhandgaon.',
        'Beginner to Intermediate',
        '1 to 2 (1 session = ~3 hours)',
        'Full masala',
        'This is a great starter campaign for people to get into Jhandgaon. It can take multiple routes and gameplay can be shortened or lengthened accordingly.',
        [
          Characters.characters['BuNtY B@nTai']!,
          Characters.characters['Chomesh']!,
          Characters.characters['Heeru']!,
          Characters.characters['Chacha Keema']!,
          Characters.characters['Lovely']!,
        ],
        {
          'Intro settings':
              'It\'s an eerily quiet night in Jhandgaon. Quiet isn\'t the norm here - it\'s usually a precursor to something really jhand. On one such soon to jhand night, our heroes of questionable moralities sit around a fire at Amma\'s Dhaba. Amma\'s Dhaba is a respite (or exile = depends on who you ask), on the left most outskirts of Jhandgaon. All sorts of seedy and needy characters sift through Amma\'s Dhaba, some exiting Jhandgaon and some yet to enter Jhandgaon. \nTonight Amma\'s Dhaba only has our heroes. Circled across the fire. Each in deep thought. Their deep thoughts are soon interrupted by 2 bandits leaping out from bushes, armed heavily with as set of rifles and waxed moustaches respectively.\nThe Director thrusts the heroes into combat at this stage. Once the bandits have either been captured or killed - the plot and background of the campaign is revealed (By the bandits - if captured. By an angry Amma who enters scene after the fight - if bandits are killed).\n',
          'The Plot Thickens':
              'It is revealed to our heroes that the bandits are assassins. Sent to finish off our heroes, the remnant leaders of the Eagle gang. The Eagle gang being a longstanding rival of Bichoo/Scorpion gang. Power over the drug trade (hence Jhandgaon) has shifted hands across both gangs over decades. Bichoo gang is the current supreme, their ruthless leader Chaku has assassinated the Eagle Gang boss (nameless, for now) in a cold, cowardly way earlier in the night. The Plot Thickens.\n\nThe petty dacoits were meant to finish off our heroes too, but they\'ve triumphed so far. This fuels their thirst for revenge and to restore Eagle gang to glory after such disrespect.\n',
          'Revelations and Forking paths':
              'Further lines of interrogation can reveal one or both things.\n\n- The dacoits have come from the dacoit camp north of Amma\'s Dhaba. The camp is mostly unguarded since the dacoits are working as hired mercenaries for Chaku tonight. The camp has arms and vehicles.\n\n- Bichoo gang leader, Chaku, after this power play aims to move a huge shipment of drugs tonight in a few hours, another power palay that will cement hime and Bichoo gang as a crime monarch instead of a volatile duopoly with Eagle gang. The route is from the quarry/gang head quarters/drug processing centre to the Outcast (out caste) Village.\n',
          'Raiding the Raiders':
              'If our heroes have opted to explore the dacoit camp, then this is relevant. Else skip to 4.2.\n\nThe dacoit camp is deep in the jungles. It is a small clearing with a bunch of tarp tents. There are 2 men around a fire on guard, in the middle of the camp. \n\nBig tent 1: This tent seems to be the living quarters of the dacoit leader. There are multiple dacoit uniforms here. A locked chest with some arms, money, and love letters from the dacoit\'s love interest. \n\nBig tent 2: This is the armory tent. It is guarded by a huge, scary dog. The dog is however tied on a leash. It has the following items:\n- guns (few assault, lots of pistol, few automatics, lots of rifles)\n- swords\n- knives \n- Some grenades\n- Blue drums full of some chemical (Director\'s discretion what it is - options are kerosene, acid, chemical for biowareface, etc.) \n\nOpen tent 1: Has 2 open Jeeps/Thars. They\'re covered by huge sheets of plastic, so can\'t be seen until uncovered by heroes.\n\nOpen tent 2: Seems to be another living quarter. has the right hand man of dacoit leader, Sabu. If this tent is approached then he attacks our characters.\n',
          'Seeking Revenge':
              'Our heroes rush to intercept the Scorpion gang on their route.\n\nMost heroes either set a trap for the incoming gang or go to direct confrontation. \n\nThe interception can be at ay point on the route. The scenery will have dense bushes, few mud huts, a tapri or a man on a cycle selling cigarettes and tea. \n\nThe scorpion gang entourage has:\n- 2 guys on bikes who are travelling ahead to clear the path\n- A large truck with a driver and muscleman up front and 2 men protecting cargo load behind.\n- A sleek black car with driver + muscleman for protection up front and Scorpion leader in the backseat.\n\nThe trap and/or showdown that then happens between both gangs is completely improv. \n\nThe Scorpion leader is wearing a bulletproof vest, but a sleeveless one since he likes to dress nice. He wears dense black shades at all times even at night. And has a comically deep voice, almost as if it\'s fake.\n\nThe game ends with Scorpion leader\'s death. The game can continue however on a completely improv basis.\n',
        }),
  ];
}

class CampaignInfo {
  String name;
  String image;
  String aim;
  String difficultyLevel;
  String sessionRequired;
  String flavour;
  String directorNotes;
  List<CharacterInfo> characters = [];
  Map<String, String> plotDetails;

  CampaignInfo(
      this.name,
      this.image,
      this.aim,
      this.difficultyLevel,
      this.sessionRequired,
      this.flavour,
      this.directorNotes,
      this.characters,
      this.plotDetails);
}
