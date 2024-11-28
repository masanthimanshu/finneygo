import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeFeaturesData {
  final String url;
  final IconData icon;
  final String heading;
  final Color cardDolor;
  final String subHeading;

  const HomeFeaturesData({
    required this.url,
    required this.icon,
    required this.heading,
    required this.cardDolor,
    required this.subHeading,
  });
}

const List<HomeFeaturesData> homeFeaturesData = [
  HomeFeaturesData(
    url: "/add-transaction",
    heading: "Add Transaction",
    icon: FontAwesomeIcons.plus,
    cardDolor: Color(0xffBFECFF),
    subHeading: "Add transaction \nhere",
  ),
  HomeFeaturesData(
    url: "/scan-options",
    heading: "Scan Bill",
    cardDolor: Color(0xffCDC1FF),
    icon: FontAwesomeIcons.cameraRetro,
    subHeading: "Scan and upload \nyour bill",
  ),
  HomeFeaturesData(
    url: "",
    heading: "Bill splitting",
    cardDolor: Color(0xffFFF6E3),
    icon: FontAwesomeIcons.users,
    subHeading: "Split bill between \nyour friends",
  ),
  HomeFeaturesData(
    url: "",
    heading: "Conversion",
    cardDolor: Color(0xffFFCCEA),
    icon: FontAwesomeIcons.moneyBillTransfer,
    subHeading: "Convert from one \ncurrency to another",
  ),
];
