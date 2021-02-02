import 'package:flutter/cupertino.dart';

class ImagesPath {
  static const String RootPath = "assets/images/";
  static const String IconsPath = "${RootPath}icons/";
  static const String BackgroundsPath = "${RootPath}background/";
  static const String LogosPath = "${RootPath}logo/";
}

class RoutePath {
  static const String Home = "/";
  static const String Login = "login";
  static const String Register = "register";
  static const String Swipe = "swipe";
  static const String Tchat = "tchat";
  static const String Profile = "profile";
  static const String Conversation = "conversation";
}

class AppColors {
  static const PrimaryColor = const Color(0xff0083a0);
  static const SecondColor = const Color(0xff1A4246);
  static const AccentColor = const Color(0xff5FC0C2);
  static const AppBarColor = const Color(0xff006E7F);
  static const StatusBarColor = const Color(0xff184246);
  static const BackgroundLightColor = const Color(0xFFE5E5E5);
  static const BackgroundDarkColor = const Color(0xff0083a0);
  static const CircleAvatarBorderColor = const Color(0xff00C4C4);
}

class AppImages {
  static const BackgroundSplashScreen =
      "${ImagesPath.BackgroundsPath}background_splashscreen.png";
  static const BackgroundLoginLight =
      "${ImagesPath.BackgroundsPath}background_connexion_day.png";
  static const BackgroundLoginDark =
      "${ImagesPath.BackgroundsPath}background_connexion_night.png";

  static const ProfilBannere =
      "${ImagesPath.BackgroundsPath}banniere_profil1.png";

  static const LogoTuba = "${ImagesPath.LogosPath}logo_tuba.png";
  static const LogoMatchWork = "${ImagesPath.LogosPath}splash.png";
  static const LogoMatchWorkText = "${ImagesPath.LogosPath}logo_text_below.png";
  static const LogoGoogle = "${ImagesPath.LogosPath}google_logo.png";
  static const LogoLinkedIn = "${ImagesPath.LogosPath}linkedin_logo.png";
  static const LogoMatchWorkBlue = "${ImagesPath.LogosPath}blue_logo.jpg";

  static const UnknownUser = "${ImagesPath.RootPath}unknown_user.png";
  static const WelcomeWhite = "${ImagesPath.RootPath}welcome_white.png";
  static const WelcomeBlue = "${ImagesPath.RootPath}welcome_blue.png";
}

class AppIcons {
  static const appIconsArray = [
    ActiveSwipe,
    InactiveSwipe,
    ActiveProfile,
    InactiveProfile,
    ActiveChat,
    InactiveChat
  ];

  static const _baseUri = "assets/images/icons/";

  static const ActiveSwipe = "${_baseUri}match_on.png";
  static const InactiveSwipe = "${_baseUri}match_off.png";
  static const ActiveProfile = "${_baseUri}profil_on.png";
  static const InactiveProfile = "${_baseUri}profil_off.png";
  static const ActiveChat = "${_baseUri}tchat_on.png";
  static const InactiveChat = "${_baseUri}tchat_off.png";
}