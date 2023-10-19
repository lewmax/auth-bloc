// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(value) => "${value} kW";

  static String m1(count) =>
      "${count} ${Intl.plural(count, zero: 'chargers', one: 'charger', two: 'chargers', few: 'chargers', other: 'chargers')}";

  static String m2(money, wh) => "${money} KES for ${wh} kWh";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutSupaChaja":
            MessageLookupByLibrary.simpleMessage("About SupaChaja"),
        "aboutSupaPage1":
            MessageLookupByLibrary.simpleMessage("Powering a Cleaner Future"),
        "aboutSupaPage2": MessageLookupByLibrary.simpleMessage(
            "SupaChaja is Kenya’s pioneer Electric Vehicle charging solutions provider with a vision to electrify transportation in Kenya and the larger African region. Working together with our partners, government agencies, policy makers and EV enthusiasts, our mission is to build the most expansive EV charging station infrastructure connecting the continent’s most iconic landmarks from Fort Jesus on the shores of the Indian Ocean to the Gold Coast on the Atlantic Ocean, from the Cape of Good Hope in the South to the majestic Atlas Mountains in the North, to accelerate the adoption and proliferation of EVs in Africa."),
        "aboutSupaPage3": MessageLookupByLibrary.simpleMessage(
            "Electrification of transportation not only reduces and stabilizes the cost of how we travel and move goods but also reduces our carbon footprint, keeps our environment clean and supports national and regional clean energy goals.  "),
        "aboutSupaPage4": MessageLookupByLibrary.simpleMessage(
            "At SupaChaja, we are driven by our passion for innovation, our unwavering desire to connect, our commitment to environmental stewardship and impacting our communities positively. Together, we can create a greener and more prosperous future for generations to come. Please join us in leading the charge to make this imminent technological revolution a reality!"),
        "accountCreated": MessageLookupByLibrary.simpleMessage(
            "Your account has been\nsuccessfully created"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addCar": MessageLookupByLibrary.simpleMessage("Add Car"),
        "addCard": MessageLookupByLibrary.simpleMessage("Add Card"),
        "addCharger": MessageLookupByLibrary.simpleMessage("Add Charger"),
        "addManually": MessageLookupByLibrary.simpleMessage("Add Manually"),
        "addNewCard": MessageLookupByLibrary.simpleMessage("Add New Card"),
        "agreeToTheProccessing": MessageLookupByLibrary.simpleMessage(
            "I agree to the processing of "),
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Already have an account?"),
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "areYouSureToDeleteCharger": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to Delete Charger ‘Garage Charger’?"),
        "available": MessageLookupByLibrary.simpleMessage("Available"),
        "available24": MessageLookupByLibrary.simpleMessage("Available 24/7"),
        "availableNow": MessageLookupByLibrary.simpleMessage("Available now"),
        "available_24_7":
            MessageLookupByLibrary.simpleMessage("Available 24/7"),
        "balance": MessageLookupByLibrary.simpleMessage("Balance"),
        "billingInformation":
            MessageLookupByLibrary.simpleMessage("Billing Information"),
        "broken": MessageLookupByLibrary.simpleMessage("Broken"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelRegistrationSubtitle":
            MessageLookupByLibrary.simpleMessage("Your data will not be saved"),
        "cancelRegistrationTitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to cancel this registration?"),
        "carBrand": MessageLookupByLibrary.simpleMessage("Car brand"),
        "carModel": MessageLookupByLibrary.simpleMessage("Car model"),
        "cardNumber": MessageLookupByLibrary.simpleMessage("Card Number"),
        "ccs": MessageLookupByLibrary.simpleMessage("CCS"),
        "chademo": MessageLookupByLibrary.simpleMessage("CHAdeMO"),
        "charge": m0,
        "chargeByLevel":
            MessageLookupByLibrary.simpleMessage("charge by level"),
        "chargeByTime": MessageLookupByLibrary.simpleMessage("charge by time"),
        "charged": MessageLookupByLibrary.simpleMessage("Charged"),
        "charges": m1,
        "charging": MessageLookupByLibrary.simpleMessage("Charging"),
        "chargingAmountKWH":
            MessageLookupByLibrary.simpleMessage("Charging amount (kWh)"),
        "chargingCost":
            MessageLookupByLibrary.simpleMessage("Charging cost (\$)"),
        "chargingDetails":
            MessageLookupByLibrary.simpleMessage("Charging Details"),
        "chargingDurationMin":
            MessageLookupByLibrary.simpleMessage("Charging duration (min)"),
        "chargingLevel": MessageLookupByLibrary.simpleMessage("Charging Level"),
        "chargingPower": MessageLookupByLibrary.simpleMessage("Charging Power"),
        "chargingSession":
            MessageLookupByLibrary.simpleMessage("Charging Session"),
        "chargingTime": MessageLookupByLibrary.simpleMessage("Charging Time"),
        "choosePhoto": MessageLookupByLibrary.simpleMessage("Choose photo"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "confirmationCodeSent": MessageLookupByLibrary.simpleMessage(
            "A confirmation code has been sent"),
        "connected": MessageLookupByLibrary.simpleMessage("Connected"),
        "connectorType": MessageLookupByLibrary.simpleMessage("Connector Type"),
        "connectorsType":
            MessageLookupByLibrary.simpleMessage("Connectors Type"),
        "createAccount": MessageLookupByLibrary.simpleMessage("Create account"),
        "createNewPassword":
            MessageLookupByLibrary.simpleMessage("Create new password"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Create password"),
        "creditCard": MessageLookupByLibrary.simpleMessage("Credit Card"),
        "custom": MessageLookupByLibrary.simpleMessage("Custom"),
        "cvv": MessageLookupByLibrary.simpleMessage("CVV"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("Delete Account"),
        "deleteCharger": MessageLookupByLibrary.simpleMessage("Delete charger"),
        "deletePhoto": MessageLookupByLibrary.simpleMessage("Delete photo"),
        "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
        "discount": MessageLookupByLibrary.simpleMessage("Discount"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "dontHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "editCharger": MessageLookupByLibrary.simpleMessage("Edit Charger"),
        "editProfile": MessageLookupByLibrary.simpleMessage("Edit Profile"),
        "email": MessageLookupByLibrary.simpleMessage("E-mail"),
        "enterCode": MessageLookupByLibrary.simpleMessage(
            "Enter code that we have sent to\nyour email"),
        "expiration": MessageLookupByLibrary.simpleMessage("Expiration"),
        "faq": MessageLookupByLibrary.simpleMessage("FAQ"),
        "favourite": MessageLookupByLibrary.simpleMessage("Favourite"),
        "fbError": MessageLookupByLibrary.simpleMessage(
            "Error happened when login with Facebook"),
        "fieldIsEmpty": MessageLookupByLibrary.simpleMessage("Field is empty"),
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "finishTime": MessageLookupByLibrary.simpleMessage("Finish time"),
        "finished": MessageLookupByLibrary.simpleMessage("Finished"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "forgotSubtitle": MessageLookupByLibrary.simpleMessage(
            "No worries, you just need to type your email address and we will send the verification code."),
        "fullName": MessageLookupByLibrary.simpleMessage("Full Name"),
        "giveTheLocationPermission": MessageLookupByLibrary.simpleMessage(
            "Please give the app permission to share your location for better performance"),
        "googleError": MessageLookupByLibrary.simpleMessage(
            "Error happened when login with Google"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "homeChargers": MessageLookupByLibrary.simpleMessage("Home Chargers"),
        "hours": MessageLookupByLibrary.simpleMessage("hours"),
        "invalidCardNumber":
            MessageLookupByLibrary.simpleMessage("Invalid card number"),
        "invalidCity": MessageLookupByLibrary.simpleMessage("Invalid city"),
        "invalidCvv": MessageLookupByLibrary.simpleMessage("Invalid cvv"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Invalid email address"),
        "invalidExpiration":
            MessageLookupByLibrary.simpleMessage("Invalid expiration"),
        "invalidName": MessageLookupByLibrary.simpleMessage("Invalid name"),
        "invalidPassword":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "invalidPhone": MessageLookupByLibrary.simpleMessage("Invalid phone"),
        "kesForWh": m2,
        "last": MessageLookupByLibrary.simpleMessage("Last"),
        "locationPermissionDenied": MessageLookupByLibrary.simpleMessage(
            "Location permission in denied"),
        "logOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "logoutDialog": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to Log out?"),
        "master": MessageLookupByLibrary.simpleMessage("Master"),
        "minutes": MessageLookupByLibrary.simpleMessage("minutes"),
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "mpesa": MessageLookupByLibrary.simpleMessage("Mpesa"),
        "myCars": MessageLookupByLibrary.simpleMessage("My Cars"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "navigate": MessageLookupByLibrary.simpleMessage("Navigate"),
        "nearest": MessageLookupByLibrary.simpleMessage("Nearest"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noMatchesFound":
            MessageLookupByLibrary.simpleMessage("No matches found"),
        "notStarted": MessageLookupByLibrary.simpleMessage("Not Started"),
        "occupied": MessageLookupByLibrary.simpleMessage("Occupied"),
        "onlyFree": MessageLookupByLibrary.simpleMessage("Only free chargers"),
        "onlyFreeChargers":
            MessageLookupByLibrary.simpleMessage("Only free chargers"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordChanged": MessageLookupByLibrary.simpleMessage(
            "Your password has been\nchanged successfully"),
        "passwordUpdated":
            MessageLookupByLibrary.simpleMessage("Password Updated!"),
        "pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "payWithMpesa": MessageLookupByLibrary.simpleMessage("Pay with Mpesa"),
        "payed": MessageLookupByLibrary.simpleMessage("Payed"),
        "paymentWasSuccessful":
            MessageLookupByLibrary.simpleMessage("Payment was successful"),
        "personalData": MessageLookupByLibrary.simpleMessage("Personal Data"),
        "personalInformation":
            MessageLookupByLibrary.simpleMessage("Personal Information"),
        "power": MessageLookupByLibrary.simpleMessage("Power"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "publicChargingStation":
            MessageLookupByLibrary.simpleMessage("Public Charging Station"),
        "remainingFunds":
            MessageLookupByLibrary.simpleMessage("Remaining funds"),
        "remainingFundsWillBeRefund": MessageLookupByLibrary.simpleMessage(
            "Remaining funds will be refund to your SupaChaja balance."),
        "repeatPassword":
            MessageLookupByLibrary.simpleMessage("Repeat Password"),
        "resendCode": MessageLookupByLibrary.simpleMessage("Resend Code"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "resetPassword":
            MessageLookupByLibrary.simpleMessage("Reset my password"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "scanQRCode": MessageLookupByLibrary.simpleMessage("Scan QR code"),
        "scanTheQRCode":
            MessageLookupByLibrary.simpleMessage("Scan the QR code"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "searchHere": MessageLookupByLibrary.simpleMessage("Search here"),
        "selectCountry": MessageLookupByLibrary.simpleMessage("Select Country"),
        "selectCustomPeriod":
            MessageLookupByLibrary.simpleMessage("Select Custom Period"),
        "serialNumber": MessageLookupByLibrary.simpleMessage("Serial number"),
        "setLevel": MessageLookupByLibrary.simpleMessage("Set Level"),
        "setTime": MessageLookupByLibrary.simpleMessage("Set Time"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "startCharging": MessageLookupByLibrary.simpleMessage("start charging"),
        "starting": MessageLookupByLibrary.simpleMessage("Starting"),
        "stationList": MessageLookupByLibrary.simpleMessage("Station List"),
        "statistics": MessageLookupByLibrary.simpleMessage("Statistics"),
        "stopCharging": MessageLookupByLibrary.simpleMessage("Stop charging"),
        "stopSessionDescr": MessageLookupByLibrary.simpleMessage(
            "If you stop the session earlier, remaining funds will be returned to your bank account automatically"),
        "stopSessionTitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to stop charging session?"),
        "stopped": MessageLookupByLibrary.simpleMessage("Stopped"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "takePhoto": MessageLookupByLibrary.simpleMessage("Take photo"),
        "termsAndCd":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions of Use"),
        "termsOfServices":
            MessageLookupByLibrary.simpleMessage("Terms of Services"),
        "thankYou": MessageLookupByLibrary.simpleMessage("Thank You!"),
        "theNearest": MessageLookupByLibrary.simpleMessage("The nearest"),
        "totalAmount": MessageLookupByLibrary.simpleMessage("Total Amount"),
        "totalPower": MessageLookupByLibrary.simpleMessage("Total Power"),
        "type1": MessageLookupByLibrary.simpleMessage("Type 1"),
        "type2": MessageLookupByLibrary.simpleMessage("Type 2"),
        "useFundsFromBalance":
            MessageLookupByLibrary.simpleMessage("Use funds from the balance"),
        "verification": MessageLookupByLibrary.simpleMessage("Verification"),
        "verify": MessageLookupByLibrary.simpleMessage("Verify"),
        "visa": MessageLookupByLibrary.simpleMessage("Visa"),
        "week": MessageLookupByLibrary.simpleMessage("Week"),
        "year": MessageLookupByLibrary.simpleMessage("Year"),
        "yearOfProduction":
            MessageLookupByLibrary.simpleMessage("Year of production"),
        "youCanResendCode": MessageLookupByLibrary.simpleMessage(
            "You can resend the code after "),
        "youHaveNotHomeChargers": MessageLookupByLibrary.simpleMessage(
            "You have not added any home \n chargers yet"),
        "youHaventHadAnyCharging": MessageLookupByLibrary.simpleMessage(
            "You haven\'t had any charging\nsessions yet"),
        "yourCity": MessageLookupByLibrary.simpleMessage("Your City"),
        "yourCountry": MessageLookupByLibrary.simpleMessage("Your Country"),
        "yourLocation": MessageLookupByLibrary.simpleMessage("Your location"),
        "yourName": MessageLookupByLibrary.simpleMessage("Your Name"),
        "yourPhone": MessageLookupByLibrary.simpleMessage("Your Phone")
      };
}
