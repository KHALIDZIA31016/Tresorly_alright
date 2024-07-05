import 'package:flutter/material.dart';
import 'package:tresorly/utils/my_size.dart';

class AppConstants {


  static const String googleIcon = 'assets/images/google.png';
  static const String appleIcon  = 'assets/images/apple.png';




  static const String subsBG  = 'assets/background/images/subs_bg.png';



  static const String bgLines  = 'assets/background/images/bg_lines.png';
  static const String faceID  = 'assets/images/face_id.png';


  static const String starIcon  = 'assets/icons/mob_app.png';
  static const String browsIcon  = 'assets/images/brows.png';
  static const String paymentIcon  = 'assets/images/payment.png';

  static const String loopIcon  = 'assets/images/loop.png';

  static const String messengerIcon  = 'assets/images/messenger.png';
  static const String netflixIcon  = 'assets/images/netflix.png';
  static const String copyIcon  = 'assets/images/copy.png';
  static const String addIcon  = 'assets/images/add.png';



  /// Subscripton Plan Screen Icons
  static const String twoFAIcon  = 'assets/images/2FA.png';
  static const String auto_fillIcon  = 'assets/images/auto_fill.png';
  static const String auto_passIcon  = 'assets/images/auto_pass.png';
  static const String breach_alertIcon  = 'assets/images/breach_alert.png';
  static const String encryptIcon  = 'assets/images/encrypt.png';
  static const String multi_deviceIcon  = 'assets/images/multi_device.png';
  static const String supportIcon  = 'assets/images/support.png';
  static const String unlimited_passIcon  = 'assets/images/unlimited_pass.png';
  static const String secure_hareIcon  = 'assets/images/secure_share.png';

  /// payment Plan Screen Icons
  static const String paypalIcon  = 'assets/images/paypal.png';
  static const String credit_cardIcon  = 'assets/images/credit_card.png';
  static const String debit_cardIcon  = 'assets/images/debit_card.png';

  static const String handIcon  = 'assets/images/mike_hand.png';
  static const String alertIcon  = 'assets/images/alert_icon.png';
  static const String dashboardIcon  = 'assets/images/dashboard_icon.png';
  static const String shareIcon  = 'assets/images/share_icon.png';


  static const String vulnerabilityIcon  = 'assets/images/vulner.png';
  static const String auth_Icon  = 'assets/images/auth_icon.png';
  static const String tick_Icon  = 'assets/images/tick.png';
  static const String dotCalendarIcon  = 'assets/images/dot_calendar.png';

  static const String clockIcon  = 'assets/images/clock.png';
  static const String calendar2  = 'assets/images/calendar_2.png';


  static const String upIcon  = 'assets/images/up_arrow.png';
  static const String master_cardIcon  = 'assets/images/mastercard.png';
  static const String three_dotsIcon  = 'assets/images/three_dots.png';

  static List<Widget> leadingTile = [
    // Image.asset(AppConstants.netflixIcon, height: 35,width: 32),
    Image.asset('assets/netf.png', scale: 3, ),
    Image.asset('assets/mesg.png', scale: 3,),

  ];
  static List<Widget> trailingTile1 = [
    Image.asset(AppConstants.copyIcon, height: 22,width: 22),
   const Icon(Icons.favorite, color: Colors.red,size: 20,)
  ];
  static List<Widget> trailingTile2 = [
    // Image.asset(AppConstants.addIcon,  height: MySize.scaleFactorHeight * 78,width: MySize.scaleFactorWidth * 52),
    Image.asset(AppConstants.addIcon,  scale: 2,),

  ];



  ///   *** Hamza's Constants ***


  static Image globeLogo= const Image(image:AssetImage('assets/assets_h/icons/globe.png',));
  static Image lockLogo= const Image(image:AssetImage('assets/assets_h/icons/lock.png',));
  static const editLogo= 'assets/assets_h/icons/edit.png';
  static const twitterLogo= 'assets/assets_h/icons/twitter.png';
  static const linkedinLogo= 'assets/assets_h/icons/linkedin.png';
  static const instaLogo= 'assets/assets_h/icons/insta.png';
  static const editProfileLogo= 'assets/assets_h/icons/useredit.png';
  static const changePasswordLogo= 'assets/assets_h/icons/key.png';
  static const authenticationLogo= 'assets/assets_h/icons/scan.png';
  static const moneyLogo= 'assets/assets_h/icons/money.png';
  static const paymentLogo= 'assets/assets_h/icons/payment.png';
  static const historyLogo= 'assets/assets_h/icons/history.png';
  static const securityLogo= 'assets/assets_h/icons/security-safe.png';
  static const notificationLogo= 'assets/assets_h/icons/notification.png';
  static const languageLogo= 'assets/assets_h/icons/language.png';
  static const dataLogo= 'assets/assets_h/icons/data.png';
  static const customizationLogo= 'assets/assets_h/icons/customization.png';
  static const helpCenterLogo= 'assets/assets_h/icons/helpCenter.png';
  static const legalLogo= 'assets/assets_h/icons/legal.png';
  static const deleteLogo= 'assets/assets_h/icons/profile-delete.png';
  static const logoutLogo= 'assets/assets_h/icons/logout.png';
  static const keyLockLogo= 'assets/assets_h/icons/keylock.png';
  static const importLogo= 'assets/assets_h/icons/import.png';
  static const exportLogo= 'assets/assets_h/icons/export.png';

  ///  images

  static Image splashBackground = const Image(image:AssetImage('assets/assets_h/images/splashscreen.png'));
  static Image appLogo= const Image(image:AssetImage('assets/assets_h/images/appLogo.png',),height: 206,width: 206,);
  static Image amazonLogo= const Image(image:AssetImage('assets/assets_h/images/amazon.png',));
  static Image messengerLogo= const Image(image:AssetImage('assets/assets_h/images/messenger.png',));
  static Image gmailLogo= const Image(image:AssetImage('assets/assets_h/images/gmail.png',));
  static Image courseraLogo= const Image(image:AssetImage('assets/assets_h/images/coursera.png',));
  static Image netflixLogo= const Image(image:AssetImage('assets/assets_h/images/netflix.png',));
  static Image udemyLogo= const Image(image:AssetImage('assets/assets_h/images/udemy.png',));
  static Image profileLogo= const Image(image:AssetImage('assets/prof.png',), height: 150, width: 150,);
  static Image binLogo= const Image(image:AssetImage('assets/assets_h/images/bin.png',));


}