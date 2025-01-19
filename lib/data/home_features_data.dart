import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeFeaturesData {
  final String url;
  final IconData icon;
  final String heading;
  final String subHeading;

  const HomeFeaturesData({
    required this.url,
    required this.icon,
    required this.heading,
    required this.subHeading,
  });
}

const List<HomeFeaturesData> homeFeaturesData = [
  HomeFeaturesData(
    url: "/add-transaction",
    heading: "Add Transaction",
    icon: FontAwesomeIcons.plus,
    subHeading: "Add transaction \nhere",
  ),
  HomeFeaturesData(
    url: "/scan-options",
    heading: "Scan Bill",
    icon: FontAwesomeIcons.cameraRetro,
    subHeading: "Scan and upload \nyour bill",
  ),
  HomeFeaturesData(
    url: "",
    heading: "Bill splitting",
    icon: FontAwesomeIcons.users,
    subHeading: "Split bill between \nyour friends",
  ),
  HomeFeaturesData(
    url: "",
    heading: "Conversion",
    icon: FontAwesomeIcons.moneyBillTransfer,
    subHeading: "Convert from one \ncurrency to another",
  ),
];
