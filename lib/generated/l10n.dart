// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Error happened when login with Facebook`
  String get fbError {
    return Intl.message(
      'Error happened when login with Facebook',
      name: 'fbError',
      desc: '',
      args: [],
    );
  }

  /// `Error happened when login with Google`
  String get googleError {
    return Intl.message(
      'Error happened when login with Google',
      name: 'googleError',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `No worries, you just need to type your email address and we will send the verification code.`
  String get forgotSubtitle {
    return Intl.message(
      'No worries, you just need to type your email address and we will send the verification code.',
      name: 'forgotSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset my password`
  String get resetPassword {
    return Intl.message(
      'Reset my password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalidEmail {
    return Intl.message(
      'Invalid email address',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Enter code that we have sent to\nyour email`
  String get enterCode {
    return Intl.message(
      'Enter code that we have sent to\nyour email',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message(
      'Resend Code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Create password`
  String get createPassword {
    return Intl.message(
      'Create password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Password`
  String get repeatPassword {
    return Intl.message(
      'Repeat Password',
      name: 'repeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password Updated!`
  String get passwordUpdated {
    return Intl.message(
      'Password Updated!',
      name: 'passwordUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been\nchanged successfully`
  String get passwordChanged {
    return Intl.message(
      'Your password has been\nchanged successfully',
      name: 'passwordChanged',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get yourName {
    return Intl.message(
      'Your Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get selectCountry {
    return Intl.message(
      'Select Country',
      name: 'selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `Your City`
  String get yourCity {
    return Intl.message(
      'Your City',
      name: 'yourCity',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the processing of `
  String get agreeToTheProccessing {
    return Intl.message(
      'I agree to the processing of ',
      name: 'agreeToTheProccessing',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data`
  String get personalData {
    return Intl.message(
      'Personal Data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInformation {
    return Intl.message(
      'Personal Information',
      name: 'personalInformation',
      desc: '',
      args: [],
    );
  }

  /// `Billing Information`
  String get billingInformation {
    return Intl.message(
      'Billing Information',
      name: 'billingInformation',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get cardNumber {
    return Intl.message(
      'Card Number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get fullName {
    return Intl.message(
      'Full Name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `CVV`
  String get cvv {
    return Intl.message(
      'CVV',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Expiration`
  String get expiration {
    return Intl.message(
      'Expiration',
      name: 'expiration',
      desc: '',
      args: [],
    );
  }

  /// `Thank You!`
  String get thankYou {
    return Intl.message(
      'Thank You!',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been\nsuccessfully created`
  String get accountCreated {
    return Intl.message(
      'Your account has been\nsuccessfully created',
      name: 'accountCreated',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get invalidPassword {
    return Intl.message(
      'Invalid password',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get createNewPassword {
    return Intl.message(
      'Create new password',
      name: 'createNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel this registration?`
  String get cancelRegistrationTitle {
    return Intl.message(
      'Are you sure you want to cancel this registration?',
      name: 'cancelRegistrationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your data will not be saved`
  String get cancelRegistrationSubtitle {
    return Intl.message(
      'Your data will not be saved',
      name: 'cancelRegistrationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your Phone`
  String get yourPhone {
    return Intl.message(
      'Your Phone',
      name: 'yourPhone',
      desc: '',
      args: [],
    );
  }

  /// `Your Country`
  String get yourCountry {
    return Intl.message(
      'Your Country',
      name: 'yourCountry',
      desc: '',
      args: [],
    );
  }

  /// `Invalid name`
  String get invalidName {
    return Intl.message(
      'Invalid name',
      name: 'invalidName',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone`
  String get invalidPhone {
    return Intl.message(
      'Invalid phone',
      name: 'invalidPhone',
      desc: '',
      args: [],
    );
  }

  /// `Invalid city`
  String get invalidCity {
    return Intl.message(
      'Invalid city',
      name: 'invalidCity',
      desc: '',
      args: [],
    );
  }

  /// `Invalid card number`
  String get invalidCardNumber {
    return Intl.message(
      'Invalid card number',
      name: 'invalidCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid cvv`
  String get invalidCvv {
    return Intl.message(
      'Invalid cvv',
      name: 'invalidCvv',
      desc: '',
      args: [],
    );
  }

  /// `Invalid expiration`
  String get invalidExpiration {
    return Intl.message(
      'Invalid expiration',
      name: 'invalidExpiration',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Mpesa`
  String get payWithMpesa {
    return Intl.message(
      'Pay with Mpesa',
      name: 'payWithMpesa',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Available 24/7`
  String get available24 {
    return Intl.message(
      'Available 24/7',
      name: 'available24',
      desc: '',
      args: [],
    );
  }

  /// `Only free chargers`
  String get onlyFree {
    return Intl.message(
      'Only free chargers',
      name: 'onlyFree',
      desc: '',
      args: [],
    );
  }

  /// `{value} kW`
  String charge(Object value) {
    return Intl.message(
      '$value kW',
      name: 'charge',
      desc: '',
      args: [value],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Occupied`
  String get occupied {
    return Intl.message(
      'Occupied',
      name: 'occupied',
      desc: '',
      args: [],
    );
  }

  /// `Broken`
  String get broken {
    return Intl.message(
      'Broken',
      name: 'broken',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Public Charging Station`
  String get publicChargingStation {
    return Intl.message(
      'Public Charging Station',
      name: 'publicChargingStation',
      desc: '',
      args: [],
    );
  }

  /// `{money} KES for {wh} kWh`
  String kesForWh(Object money, Object wh) {
    return Intl.message(
      '$money KES for $wh kWh',
      name: 'kesForWh',
      desc: '',
      args: [money, wh],
    );
  }

  /// `{count} {count, plural, zero{chargers} one{charger} two{chargers} few{chargers} other{chargers}}`
  String charges(num count) {
    return Intl.message(
      '$count ${Intl.plural(count, zero: 'chargers', one: 'charger', two: 'chargers', few: 'chargers', other: 'chargers')}',
      name: 'charges',
      desc: '',
      args: [count],
    );
  }

  /// `start charging`
  String get startCharging {
    return Intl.message(
      'start charging',
      name: 'startCharging',
      desc: '',
      args: [],
    );
  }

  /// `Search here`
  String get searchHere {
    return Intl.message(
      'Search here',
      name: 'searchHere',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favourite {
    return Intl.message(
      'Favourite',
      name: 'favourite',
      desc: '',
      args: [],
    );
  }

  /// `Nearest`
  String get nearest {
    return Intl.message(
      'Nearest',
      name: 'nearest',
      desc: '',
      args: [],
    );
  }

  /// `The nearest`
  String get theNearest {
    return Intl.message(
      'The nearest',
      name: 'theNearest',
      desc: '',
      args: [],
    );
  }

  /// `Charging`
  String get charging {
    return Intl.message(
      'Charging',
      name: 'charging',
      desc: '',
      args: [],
    );
  }

  /// `Charged`
  String get charged {
    return Intl.message(
      'Charged',
      name: 'charged',
      desc: '',
      args: [],
    );
  }

  /// `Stopped`
  String get stopped {
    return Intl.message(
      'Stopped',
      name: 'stopped',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Charging Power`
  String get chargingPower {
    return Intl.message(
      'Charging Power',
      name: 'chargingPower',
      desc: '',
      args: [],
    );
  }

  /// `Connector Type`
  String get connectorType {
    return Intl.message(
      'Connector Type',
      name: 'connectorType',
      desc: '',
      args: [],
    );
  }

  /// `Available now`
  String get availableNow {
    return Intl.message(
      'Available now',
      name: 'availableNow',
      desc: '',
      args: [],
    );
  }

  /// `Available 24/7`
  String get available_24_7 {
    return Intl.message(
      'Available 24/7',
      name: 'available_24_7',
      desc: '',
      args: [],
    );
  }

  /// `Only free chargers`
  String get onlyFreeChargers {
    return Intl.message(
      'Only free chargers',
      name: 'onlyFreeChargers',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Connectors Type`
  String get connectorsType {
    return Intl.message(
      'Connectors Type',
      name: 'connectorsType',
      desc: '',
      args: [],
    );
  }

  /// `Your location`
  String get yourLocation {
    return Intl.message(
      'Your location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Last`
  String get last {
    return Intl.message(
      'Last',
      name: 'last',
      desc: '',
      args: [],
    );
  }

  /// `A confirmation code has been sent`
  String get confirmationCodeSent {
    return Intl.message(
      'A confirmation code has been sent',
      name: 'confirmationCodeSent',
      desc: '',
      args: [],
    );
  }

  /// `You can resend the code after `
  String get youCanResendCode {
    return Intl.message(
      'You can resend the code after ',
      name: 'youCanResendCode',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `My Cars`
  String get myCars {
    return Intl.message(
      'My Cars',
      name: 'myCars',
      desc: '',
      args: [],
    );
  }

  /// `Home Chargers`
  String get homeChargers {
    return Intl.message(
      'Home Chargers',
      name: 'homeChargers',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `About SupaChaja`
  String get aboutSupaChaja {
    return Intl.message(
      'About SupaChaja',
      name: 'aboutSupaChaja',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message(
      'FAQ',
      name: 'faq',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Services`
  String get termsOfServices {
    return Intl.message(
      'Terms of Services',
      name: 'termsOfServices',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to Log out?`
  String get logoutDialog {
    return Intl.message(
      'Are you sure you want to Log out?',
      name: 'logoutDialog',
      desc: '',
      args: [],
    );
  }

  /// `Add Car`
  String get addCar {
    return Intl.message(
      'Add Car',
      name: 'addCar',
      desc: '',
      args: [],
    );
  }

  /// `Car brand`
  String get carBrand {
    return Intl.message(
      'Car brand',
      name: 'carBrand',
      desc: '',
      args: [],
    );
  }

  /// `Car model`
  String get carModel {
    return Intl.message(
      'Car model',
      name: 'carModel',
      desc: '',
      args: [],
    );
  }

  /// `Year of production`
  String get yearOfProduction {
    return Intl.message(
      'Year of production',
      name: 'yearOfProduction',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Field is empty`
  String get fieldIsEmpty {
    return Intl.message(
      'Field is empty',
      name: 'fieldIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Select Custom Period`
  String get selectCustomPeriod {
    return Intl.message(
      'Select Custom Period',
      name: 'selectCustomPeriod',
      desc: '',
      args: [],
    );
  }

  /// `You haven't had any charging\nsessions yet`
  String get youHaventHadAnyCharging {
    return Intl.message(
      'You haven\'t had any charging\nsessions yet',
      name: 'youHaventHadAnyCharging',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Custom`
  String get custom {
    return Intl.message(
      'Custom',
      name: 'custom',
      desc: '',
      args: [],
    );
  }

  /// `Delete photo`
  String get deletePhoto {
    return Intl.message(
      'Delete photo',
      name: 'deletePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Take photo`
  String get takePhoto {
    return Intl.message(
      'Take photo',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Choose photo`
  String get choosePhoto {
    return Intl.message(
      'Choose photo',
      name: 'choosePhoto',
      desc: '',
      args: [],
    );
  }

  /// `No matches found`
  String get noMatchesFound {
    return Intl.message(
      'No matches found',
      name: 'noMatchesFound',
      desc: '',
      args: [],
    );
  }

  /// `Charging amount (kWh)`
  String get chargingAmountKWH {
    return Intl.message(
      'Charging amount (kWh)',
      name: 'chargingAmountKWH',
      desc: '',
      args: [],
    );
  }

  /// `Charging duration (min)`
  String get chargingDurationMin {
    return Intl.message(
      'Charging duration (min)',
      name: 'chargingDurationMin',
      desc: '',
      args: [],
    );
  }

  /// `Charging cost ($)`
  String get chargingCost {
    return Intl.message(
      'Charging cost (\$)',
      name: 'chargingCost',
      desc: '',
      args: [],
    );
  }

  /// `Navigate`
  String get navigate {
    return Intl.message(
      'Navigate',
      name: 'navigate',
      desc: '',
      args: [],
    );
  }

  /// `Location permission in denied`
  String get locationPermissionDenied {
    return Intl.message(
      'Location permission in denied',
      name: 'locationPermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Please give the app permission to share your location for better performance`
  String get giveTheLocationPermission {
    return Intl.message(
      'Please give the app permission to share your location for better performance',
      name: 'giveTheLocationPermission',
      desc: '',
      args: [],
    );
  }

  /// `Charging Session`
  String get chargingSession {
    return Intl.message(
      'Charging Session',
      name: 'chargingSession',
      desc: '',
      args: [],
    );
  }

  /// `Connected`
  String get connected {
    return Intl.message(
      'Connected',
      name: 'connected',
      desc: '',
      args: [],
    );
  }

  /// `charge by time`
  String get chargeByTime {
    return Intl.message(
      'charge by time',
      name: 'chargeByTime',
      desc: '',
      args: [],
    );
  }

  /// `charge by level`
  String get chargeByLevel {
    return Intl.message(
      'charge by level',
      name: 'chargeByLevel',
      desc: '',
      args: [],
    );
  }

  /// `Total Power`
  String get totalPower {
    return Intl.message(
      'Total Power',
      name: 'totalPower',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `hours`
  String get hours {
    return Intl.message(
      'hours',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `minutes`
  String get minutes {
    return Intl.message(
      'minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Set Time`
  String get setTime {
    return Intl.message(
      'Set Time',
      name: 'setTime',
      desc: '',
      args: [],
    );
  }

  /// `Set Level`
  String get setLevel {
    return Intl.message(
      'Set Level',
      name: 'setLevel',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Power`
  String get power {
    return Intl.message(
      'Power',
      name: 'power',
      desc: '',
      args: [],
    );
  }

  /// `Charging Time`
  String get chargingTime {
    return Intl.message(
      'Charging Time',
      name: 'chargingTime',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Visa`
  String get visa {
    return Intl.message(
      'Visa',
      name: 'visa',
      desc: '',
      args: [],
    );
  }

  /// `Master`
  String get master {
    return Intl.message(
      'Master',
      name: 'master',
      desc: '',
      args: [],
    );
  }

  /// `Add New Card`
  String get addNewCard {
    return Intl.message(
      'Add New Card',
      name: 'addNewCard',
      desc: '',
      args: [],
    );
  }

  /// `Mpesa`
  String get mpesa {
    return Intl.message(
      'Mpesa',
      name: 'mpesa',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Station List`
  String get stationList {
    return Intl.message(
      'Station List',
      name: 'stationList',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get addCard {
    return Intl.message(
      'Add Card',
      name: 'addCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment was successful`
  String get paymentWasSuccessful {
    return Intl.message(
      'Payment was successful',
      name: 'paymentWasSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Stop charging`
  String get stopCharging {
    return Intl.message(
      'Stop charging',
      name: 'stopCharging',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get finished {
    return Intl.message(
      'Finished',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `Charging Details`
  String get chargingDetails {
    return Intl.message(
      'Charging Details',
      name: 'chargingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Finish time`
  String get finishTime {
    return Intl.message(
      'Finish time',
      name: 'finishTime',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to stop charging session?`
  String get stopSessionTitle {
    return Intl.message(
      'Are you sure you want to stop charging session?',
      name: 'stopSessionTitle',
      desc: '',
      args: [],
    );
  }

  /// `If you stop the session earlier, remaining funds will be returned to your bank account automatically`
  String get stopSessionDescr {
    return Intl.message(
      'If you stop the session earlier, remaining funds will be returned to your bank account automatically',
      name: 'stopSessionDescr',
      desc: '',
      args: [],
    );
  }

  /// `Payed`
  String get payed {
    return Intl.message(
      'Payed',
      name: 'payed',
      desc: '',
      args: [],
    );
  }

  /// `Remaining funds`
  String get remainingFunds {
    return Intl.message(
      'Remaining funds',
      name: 'remainingFunds',
      desc: '',
      args: [],
    );
  }

  /// `Not Started`
  String get notStarted {
    return Intl.message(
      'Not Started',
      name: 'notStarted',
      desc: '',
      args: [],
    );
  }

  /// `Starting`
  String get starting {
    return Intl.message(
      'Starting',
      name: 'starting',
      desc: '',
      args: [],
    );
  }

  /// `You have not added any home \n chargers yet`
  String get youHaveNotHomeChargers {
    return Intl.message(
      'You have not added any home \n chargers yet',
      name: 'youHaveNotHomeChargers',
      desc: '',
      args: [],
    );
  }

  /// `Add Charger`
  String get addCharger {
    return Intl.message(
      'Add Charger',
      name: 'addCharger',
      desc: '',
      args: [],
    );
  }

  /// `Add Manually`
  String get addManually {
    return Intl.message(
      'Add Manually',
      name: 'addManually',
      desc: '',
      args: [],
    );
  }

  /// `Delete charger`
  String get deleteCharger {
    return Intl.message(
      'Delete charger',
      name: 'deleteCharger',
      desc: '',
      args: [],
    );
  }

  /// `Serial number`
  String get serialNumber {
    return Intl.message(
      'Serial number',
      name: 'serialNumber',
      desc: '',
      args: [],
    );
  }

  /// `Scan the QR code`
  String get scanTheQRCode {
    return Intl.message(
      'Scan the QR code',
      name: 'scanTheQRCode',
      desc: '',
      args: [],
    );
  }

  /// `Edit Charger`
  String get editCharger {
    return Intl.message(
      'Edit Charger',
      name: 'editCharger',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to Delete Charger ‘Garage Charger’?`
  String get areYouSureToDeleteCharger {
    return Intl.message(
      'Are you sure you want to Delete Charger ‘Garage Charger’?',
      name: 'areYouSureToDeleteCharger',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR code`
  String get scanQRCode {
    return Intl.message(
      'Scan QR code',
      name: 'scanQRCode',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Type 1`
  String get type1 {
    return Intl.message(
      'Type 1',
      name: 'type1',
      desc: '',
      args: [],
    );
  }

  /// `Type 2`
  String get type2 {
    return Intl.message(
      'Type 2',
      name: 'type2',
      desc: '',
      args: [],
    );
  }

  /// `CCS`
  String get ccs {
    return Intl.message(
      'CCS',
      name: 'ccs',
      desc: '',
      args: [],
    );
  }

  /// `CHAdeMO`
  String get chademo {
    return Intl.message(
      'CHAdeMO',
      name: 'chademo',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions of Use`
  String get termsAndCd {
    return Intl.message(
      'Terms and Conditions of Use',
      name: 'termsAndCd',
      desc: '',
      args: [],
    );
  }

  /// `Remaining funds will be refund to your SupaChaja balance.`
  String get remainingFundsWillBeRefund {
    return Intl.message(
      'Remaining funds will be refund to your SupaChaja balance.',
      name: 'remainingFundsWillBeRefund',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message(
      'Balance',
      name: 'balance',
      desc: '',
      args: [],
    );
  }

  /// `Powering a Cleaner Future`
  String get aboutSupaPage1 {
    return Intl.message(
      'Powering a Cleaner Future',
      name: 'aboutSupaPage1',
      desc: '',
      args: [],
    );
  }

  /// `SupaChaja is Kenya’s pioneer Electric Vehicle charging solutions provider with a vision to electrify transportation in Kenya and the larger African region. Working together with our partners, government agencies, policy makers and EV enthusiasts, our mission is to build the most expansive EV charging station infrastructure connecting the continent’s most iconic landmarks from Fort Jesus on the shores of the Indian Ocean to the Gold Coast on the Atlantic Ocean, from the Cape of Good Hope in the South to the majestic Atlas Mountains in the North, to accelerate the adoption and proliferation of EVs in Africa.`
  String get aboutSupaPage2 {
    return Intl.message(
      'SupaChaja is Kenya’s pioneer Electric Vehicle charging solutions provider with a vision to electrify transportation in Kenya and the larger African region. Working together with our partners, government agencies, policy makers and EV enthusiasts, our mission is to build the most expansive EV charging station infrastructure connecting the continent’s most iconic landmarks from Fort Jesus on the shores of the Indian Ocean to the Gold Coast on the Atlantic Ocean, from the Cape of Good Hope in the South to the majestic Atlas Mountains in the North, to accelerate the adoption and proliferation of EVs in Africa.',
      name: 'aboutSupaPage2',
      desc: '',
      args: [],
    );
  }

  /// `Electrification of transportation not only reduces and stabilizes the cost of how we travel and move goods but also reduces our carbon footprint, keeps our environment clean and supports national and regional clean energy goals.  `
  String get aboutSupaPage3 {
    return Intl.message(
      'Electrification of transportation not only reduces and stabilizes the cost of how we travel and move goods but also reduces our carbon footprint, keeps our environment clean and supports national and regional clean energy goals.  ',
      name: 'aboutSupaPage3',
      desc: '',
      args: [],
    );
  }

  /// `At SupaChaja, we are driven by our passion for innovation, our unwavering desire to connect, our commitment to environmental stewardship and impacting our communities positively. Together, we can create a greener and more prosperous future for generations to come. Please join us in leading the charge to make this imminent technological revolution a reality!`
  String get aboutSupaPage4 {
    return Intl.message(
      'At SupaChaja, we are driven by our passion for innovation, our unwavering desire to connect, our commitment to environmental stewardship and impacting our communities positively. Together, we can create a greener and more prosperous future for generations to come. Please join us in leading the charge to make this imminent technological revolution a reality!',
      name: 'aboutSupaPage4',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Use funds from the balance`
  String get useFundsFromBalance {
    return Intl.message(
      'Use funds from the balance',
      name: 'useFundsFromBalance',
      desc: '',
      args: [],
    );
  }

  /// `Charging Level`
  String get chargingLevel {
    return Intl.message(
      'Charging Level',
      name: 'chargingLevel',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
