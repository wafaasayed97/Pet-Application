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

  static String m0(error) => "Authentication error: ${error}";

  static String m1(error, count) =>
      "Auth error: ${error}. Attempts left: ${count}";

  static String m2(count) => "Authentication failed ${count} times";

  static String m3(biometric) => "${biometric} enabled";

  static String m4(biometric) => "Disable ${biometric}";

  static String m5(biometricType) => "Enable ${biometricType} for quick login";

  static String m6(biometric) => "Enable ${biometric}";

  static String m7(biometricType) =>
      "Use ${biometricType} to securely access your account";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Choose_your_unit_and_reserve_it_instantly_with_flexible_payment_options":
        MessageLookupByLibrary.simpleMessage(
          "Choose your unit and reserve it instantly with flexible payment options.",
        ),
    "add_your_email_address": MessageLookupByLibrary.simpleMessage(
      "Add Your Email Address",
    ),
    "add_your_password": MessageLookupByLibrary.simpleMessage(
      "Add Your Password",
    ),
    "address": MessageLookupByLibrary.simpleMessage("Address"),
    "address_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your address",
    ),
    "address_too_short": MessageLookupByLibrary.simpleMessage(
      "Address must be at least 5 characters",
    ),
    "already_have_account": MessageLookupByLibrary.simpleMessage(
      "Already have an Account?",
    ),
    "apartment": MessageLookupByLibrary.simpleMessage("Apartment"),
    "arabic_name": MessageLookupByLibrary.simpleMessage("Arabic Name"),
    "arabic_name_invalid": MessageLookupByLibrary.simpleMessage(
      "Arabic name must contain only Arabic characters",
    ),
    "arabic_name_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your Arabic name",
    ),
    "auth_disabled": MessageLookupByLibrary.simpleMessage(
      "Authentication disabled",
    ),
    "auth_error": m0,
    "auth_error_with_attempts": m1,
    "auth_failed": MessageLookupByLibrary.simpleMessage(
      "Authentication failed",
    ),
    "auth_max": m2,
    "auth_success": m3,
    "authentication_failed": MessageLookupByLibrary.simpleMessage(
      "Authentication failed",
    ),
    "bachelor_degree": MessageLookupByLibrary.simpleMessage("Bachelor Degree"),
    "bathrooms": MessageLookupByLibrary.simpleMessage("Bathrooms"),
    "bedrooms": MessageLookupByLibrary.simpleMessage("Bedrooms"),
    "biometric": MessageLookupByLibrary.simpleMessage("Biometric"),
    "biometric_not_enabled": MessageLookupByLibrary.simpleMessage(
      "Biometric not enabled",
    ),
    "book_a_zoom_meeting_or_chat_with_a_tmg_representative_for_personalized_guidance":
        MessageLookupByLibrary.simpleMessage(
          "Book a Zoom meeting or chat with a TMG representative for personalized guidance",
        ),
    "browse_units_models_and_communities_that_suit_your_lifestyle_and_budget":
        MessageLookupByLibrary.simpleMessage(
          "Browse units, models, and communities that suit your lifestyle and budget.",
        ),
    "camera": MessageLookupByLibrary.simpleMessage("Camera"),
    "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "chalet": MessageLookupByLibrary.simpleMessage("Chalet"),
    "change_language": MessageLookupByLibrary.simpleMessage("Change Language"),
    "chatbot": MessageLookupByLibrary.simpleMessage("Chatbot"),
    "check": MessageLookupByLibrary.simpleMessage("Check"),
    "checkConnection": MessageLookupByLibrary.simpleMessage(
      "Please check your internet connection and try again",
    ),
    "choose_image_source": MessageLookupByLibrary.simpleMessage(
      "Choose image source",
    ),
    "choose_nationality": MessageLookupByLibrary.simpleMessage(
      "Choose Nationality",
    ),
    "coming_soon_appointments": MessageLookupByLibrary.simpleMessage(
      "My Appointments - Coming Soon",
    ),
    "coming_soon_units": MessageLookupByLibrary.simpleMessage(
      "My Units - Coming Soon",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "Confirm New Password*",
    ),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "Confirm Password*",
    ),
    "confirm_password_title": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "connectToSalesman": MessageLookupByLibrary.simpleMessage(
      "Connect to Salesman",
    ),
    "contain_lowercase": MessageLookupByLibrary.simpleMessage(
      "Contains a lowercase letter",
    ),
    "contain_number": MessageLookupByLibrary.simpleMessage("Contains a number"),
    "contain_number_and_special": MessageLookupByLibrary.simpleMessage(
      "Number & Special Character",
    ),
    "contain_special": MessageLookupByLibrary.simpleMessage(
      "Contains a special character",
    ),
    "contain_uppercase": MessageLookupByLibrary.simpleMessage(
      "Contains an uppercase letter",
    ),
    "continue_as_guest": MessageLookupByLibrary.simpleMessage(
      "Continue as Guest",
    ),
    "continue_guest": MessageLookupByLibrary.simpleMessage("Continue as Guest"),
    "could_not_launch": MessageLookupByLibrary.simpleMessage(
      "Could not launch",
    ),
    "create_an_account": MessageLookupByLibrary.simpleMessage(
      "create an account ?",
    ),
    "delete_account": MessageLookupByLibrary.simpleMessage("Delete Account"),
    "deliveryDate": MessageLookupByLibrary.simpleMessage("Delivery Date"),
    "device_not_supported": MessageLookupByLibrary.simpleMessage(
      "Device not supported",
    ),
    "didnt_receive_code": MessageLookupByLibrary.simpleMessage(
      "Didn\'t receive the code?",
    ),
    "disable_biometric": m4,
    "disable_face_id": MessageLookupByLibrary.simpleMessage("Disable Face ID"),
    "doctor": MessageLookupByLibrary.simpleMessage("Doctor"),
    "done": MessageLookupByLibrary.simpleMessage("Done"),
    "dont_have_account": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account?",
    ),
    "dont_have_an_account": MessageLookupByLibrary.simpleMessage(
      "Don\'t Have an Account ? ",
    ),
    "double_press_to_exit": MessageLookupByLibrary.simpleMessage(
      "Double press to exit",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("Edit"),
    "education": MessageLookupByLibrary.simpleMessage("Education"),
    "egyptian": MessageLookupByLibrary.simpleMessage("Egyptian"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "email_address": MessageLookupByLibrary.simpleMessage("Email Address*"),
    "email_hint": MessageLookupByLibrary.simpleMessage(
      "Add Your Email Address",
    ),
    "email_invalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email address",
    ),
    "email_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your email address",
    ),
    "emirati": MessageLookupByLibrary.simpleMessage("Emirati"),
    "enableBiometric": m5,
    "enable_biometric": m6,
    "enable_face_id": MessageLookupByLibrary.simpleMessage("Enable Face ID"),
    "enable_face_id_for_quick_login": MessageLookupByLibrary.simpleMessage(
      "Enable Face ID for Quick Login",
    ),
    "engineer": MessageLookupByLibrary.simpleMessage("Engineer"),
    "enterConfirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "Re-enter your password",
    ),
    "enter_address": MessageLookupByLibrary.simpleMessage("Enter your address"),
    "enter_arabic_name": MessageLookupByLibrary.simpleMessage(
      "Enter your name in Arabic",
    ),
    "enter_email": MessageLookupByLibrary.simpleMessage(
      "Please enter your email address",
    ),
    "enter_email_address": MessageLookupByLibrary.simpleMessage(
      "Enter your email address",
    ),
    "enter_first_name": MessageLookupByLibrary.simpleMessage(
      "Enter your first name",
    ),
    "enter_full_name": MessageLookupByLibrary.simpleMessage(
      "Please enter your full name",
    ),
    "enter_last_name": MessageLookupByLibrary.simpleMessage(
      "Enter your last name",
    ),
    "enter_name": MessageLookupByLibrary.simpleMessage("Enter your name"),
    "enter_national_id": MessageLookupByLibrary.simpleMessage(
      "Enter your national ID",
    ),
    "enter_new_your_password": MessageLookupByLibrary.simpleMessage(
      "Enter your new password",
    ),
    "enter_otp": MessageLookupByLibrary.simpleMessage("Enter the 4-digit code"),
    "enter_passport_number": MessageLookupByLibrary.simpleMessage(
      "Enter your passport number",
    ),
    "enter_password": MessageLookupByLibrary.simpleMessage(
      "Enter your password",
    ),
    "enter_phone_number": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "enter_to_confirm_your_password": MessageLookupByLibrary.simpleMessage(
      "Enter to confirm your password",
    ),
    "enter_your_phone_number": MessageLookupByLibrary.simpleMessage(
      "Enter your phone number",
    ),
    "error": MessageLookupByLibrary.simpleMessage("Error"),
    "face_ID_authentication_failed": MessageLookupByLibrary.simpleMessage(
      "Face ID authentication failed",
    ),
    "face_id": MessageLookupByLibrary.simpleMessage("Face ID"),
    "face_id_description": MessageLookupByLibrary.simpleMessage(
      "Face ID helps you log in instantly while keeping your data safe.",
    ),
    "face_id_disabled": MessageLookupByLibrary.simpleMessage(
      "Face ID is disabled",
    ),
    "face_id_enabled": MessageLookupByLibrary.simpleMessage(
      "Face ID is enabled",
    ),
    "face_id_error": MessageLookupByLibrary.simpleMessage("Face ID error :"),
    "face_id_login_successful": MessageLookupByLibrary.simpleMessage(
      "Face ID login successful!",
    ),
    "face_id_not_enabled": MessageLookupByLibrary.simpleMessage(
      "Face ID is not enabled",
    ),
    "face_unlock": MessageLookupByLibrary.simpleMessage("Face Unlock"),
    "female": MessageLookupByLibrary.simpleMessage("Female"),
    "file_loading_failed": MessageLookupByLibrary.simpleMessage(
      "Failed to load file",
    ),
    "file_not_available": MessageLookupByLibrary.simpleMessage(
      "File not available",
    ),
    "fingerprint": MessageLookupByLibrary.simpleMessage("Fingerprint"),
    "finishing": MessageLookupByLibrary.simpleMessage("Finishing"),
    "first_name": MessageLookupByLibrary.simpleMessage("First Name"),
    "first_name_hint": MessageLookupByLibrary.simpleMessage(
      "Add Your First Name",
    ),
    "floorPlan": MessageLookupByLibrary.simpleMessage("Floor Plan"),
    "forgot_password": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "full_name": MessageLookupByLibrary.simpleMessage("Full Name*"),
    "full_name_hint": MessageLookupByLibrary.simpleMessage(
      "Add your full name as in your identity",
    ),
    "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
    "garage": MessageLookupByLibrary.simpleMessage("Garage"),
    "gender": MessageLookupByLibrary.simpleMessage("Gender"),
    "help_support": MessageLookupByLibrary.simpleMessage("Help & Support"),
    "high_school": MessageLookupByLibrary.simpleMessage("High School"),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "included": MessageLookupByLibrary.simpleMessage("Included"),
    "instagram_error": MessageLookupByLibrary.simpleMessage(
      "Could not open Instagram",
    ),
    "invalid_email": MessageLookupByLibrary.simpleMessage(
      "Invalid email format",
    ),
    "invalid_national_id": MessageLookupByLibrary.simpleMessage(
      "Invalid national ID",
    ),
    "invalid_phone_number": MessageLookupByLibrary.simpleMessage(
      "Invalid phone number format",
    ),
    "kitchen": MessageLookupByLibrary.simpleMessage("Kitchen"),
    "kuwaiti": MessageLookupByLibrary.simpleMessage("Kuwaiti"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "last_name": MessageLookupByLibrary.simpleMessage("Last Name"),
    "last_name_hint": MessageLookupByLibrary.simpleMessage(
      "Add Your Last Name",
    ),
    "lawyer": MessageLookupByLibrary.simpleMessage("Lawyer"),
    "lets_start": MessageLookupByLibrary.simpleMessage("Let\'s Get Started"),
    "livingRoom": MessageLookupByLibrary.simpleMessage("Living Room"),
    "loading": MessageLookupByLibrary.simpleMessage("Loading..."),
    "location": MessageLookupByLibrary.simpleMessage("Location"),
    "login": MessageLookupByLibrary.simpleMessage("Login"),
    "login_failed": MessageLookupByLibrary.simpleMessage("Login failed: "),
    "login_failed_message": MessageLookupByLibrary.simpleMessage(
      "Login Failed",
    ),
    "login_now": MessageLookupByLibrary.simpleMessage("Login Now"),
    "login_success_message": MessageLookupByLibrary.simpleMessage(
      "Login Successful",
    ),
    "login_successful": MessageLookupByLibrary.simpleMessage(
      "Login successful!",
    ),
    "login_with_face_id": MessageLookupByLibrary.simpleMessage(
      "Login with Face ID",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Logout"),
    "maintenance": MessageLookupByLibrary.simpleMessage("Maintenance"),
    "male": MessageLookupByLibrary.simpleMessage("Male"),
    "mandatory_fields_locked": MessageLookupByLibrary.simpleMessage(
      "Mandatory fields are locked until verification",
    ),
    "master_degree": MessageLookupByLibrary.simpleMessage("Master Degree"),
    "meet_sales_expert": MessageLookupByLibrary.simpleMessage(
      "Meet Sales Expert",
    ),
    "menu": MessageLookupByLibrary.simpleMessage("Menu"),
    "min_8_char": MessageLookupByLibrary.simpleMessage("At least 8 characters"),
    "my_appointments": MessageLookupByLibrary.simpleMessage("My Appointments"),
    "my_info": MessageLookupByLibrary.simpleMessage("My Info"),
    "my_profile": MessageLookupByLibrary.simpleMessage("My Profile"),
    "my_units": MessageLookupByLibrary.simpleMessage("My Units"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "name_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your name",
    ),
    "name_too_short": MessageLookupByLibrary.simpleMessage(
      "Name must be at least 3 characters",
    ),
    "national_id": MessageLookupByLibrary.simpleMessage("National ID"),
    "national_id_invalid_century": MessageLookupByLibrary.simpleMessage(
      "Invalid century digit in national ID",
    ),
    "national_id_invalid_date": MessageLookupByLibrary.simpleMessage(
      "Invalid date in national ID",
    ),
    "national_id_invalid_day": MessageLookupByLibrary.simpleMessage(
      "Invalid day in national ID (must be 01-31)",
    ),
    "national_id_invalid_governorate": MessageLookupByLibrary.simpleMessage(
      "Invalid governorate code in national ID",
    ),
    "national_id_invalid_month": MessageLookupByLibrary.simpleMessage(
      "Invalid month in national ID (must be 01-12)",
    ),
    "national_id_must_be_14_digits": MessageLookupByLibrary.simpleMessage(
      "National ID must be exactly 14 digits",
    ),
    "national_id_must_be_digits": MessageLookupByLibrary.simpleMessage(
      "National ID must contain only numbers",
    ),
    "national_id_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your national ID",
    ),
    "nationality": MessageLookupByLibrary.simpleMessage("Nationality"),
    "new_password": MessageLookupByLibrary.simpleMessage("New Password*"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "noInternet": MessageLookupByLibrary.simpleMessage(
      "No Internet Connection",
    ),
    "no_saved_credentials": MessageLookupByLibrary.simpleMessage(
      "No saved credentials found",
    ),
    "notNow": MessageLookupByLibrary.simpleMessage("Not now"),
    "not_logged_in": MessageLookupByLibrary.simpleMessage(
      "You are not logged in",
    ),
    "not_supported_device": MessageLookupByLibrary.simpleMessage(
      "Your device is not supported",
    ),
    "not_verified": MessageLookupByLibrary.simpleMessage("Not Verified"),
    "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
    "occupation": MessageLookupByLibrary.simpleMessage("Occupation"),
    "or": MessageLookupByLibrary.simpleMessage("OR"),
    "other": MessageLookupByLibrary.simpleMessage("Other"),
    "otp_sent_to": MessageLookupByLibrary.simpleMessage("OTP sent to: "),
    "our_projects": MessageLookupByLibrary.simpleMessage("Our Projects"),
    "passport_cannot_be_all_zeros": MessageLookupByLibrary.simpleMessage(
      "Passport number cannot be all zeros",
    ),
    "passport_format_invalid": MessageLookupByLibrary.simpleMessage(
      "Passport number can only contain letters and numbers",
    ),
    "passport_length_invalid": MessageLookupByLibrary.simpleMessage(
      "Passport number must be between 6-20 characters",
    ),
    "passport_number": MessageLookupByLibrary.simpleMessage("Passport Number"),
    "passport_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your passport number",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Password*"),
    "passwordMatches": MessageLookupByLibrary.simpleMessage("Password Matches"),
    "passwordNotMatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "password_is_required": MessageLookupByLibrary.simpleMessage(
      "Password is required",
    ),
    "password_reset_successful": MessageLookupByLibrary.simpleMessage(
      "Password reset successful",
    ),
    "pdf_not_supported_on_emulator": MessageLookupByLibrary.simpleMessage(
      "PDF viewer is not supported on emulator",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("Personal Info"),
    "phd": MessageLookupByLibrary.simpleMessage("PhD"),
    "phone_hint": MessageLookupByLibrary.simpleMessage(""),
    "phone_invalid": MessageLookupByLibrary.simpleMessage(
      "Phone number must be 10-15 digits",
    ),
    "phone_number": MessageLookupByLibrary.simpleMessage("Phone Number*"),
    "phone_number_is_required": MessageLookupByLibrary.simpleMessage(
      "Phone number is required",
    ),
    "phone_number_must_contain_only_digits":
        MessageLookupByLibrary.simpleMessage(
          "Phone number must contain only digits",
        ),
    "phone_required": MessageLookupByLibrary.simpleMessage(
      "Please enter your phone number",
    ),
    "pleaseLoginAgain": MessageLookupByLibrary.simpleMessage(
      "Please login again to continue",
    ),
    "pleaseTryAgain": MessageLookupByLibrary.simpleMessage(
      "Please try again later",
    ),
    "please_authenticate": MessageLookupByLibrary.simpleMessage(
      "Please authenticate to enable local auth",
    ),
    "please_enter_a_valid_phone_number": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid phone number",
    ),
    "please_enter_new_strong_pass": MessageLookupByLibrary.simpleMessage(
      "Please enter a new strong password",
    ),
    "please_enter_the_new_phone_number_to_reset_your_password":
        MessageLookupByLibrary.simpleMessage(
          "Please enter the new phone number to reset your password",
        ),
    "please_enter_your_details_and_make_sure_you_are_entering_your_correct_password":
        MessageLookupByLibrary.simpleMessage(
          "Please enter your details, and make sure you are entering your correct password",
        ),
    "please_enter_your_phone_number_to_reset_your_password":
        MessageLookupByLibrary.simpleMessage(
          "Please enter your phone number to reset your password",
        ),
    "please_fill_all_fields": MessageLookupByLibrary.simpleMessage(
      "Please fill all fields",
    ),
    "please_fix_validation_errors": MessageLookupByLibrary.simpleMessage(
      "Please fix the errors before saving",
    ),
    "please_select_nationality": MessageLookupByLibrary.simpleMessage(
      "Please select your nationality",
    ),
    "privacy_policy": MessageLookupByLibrary.simpleMessage(
      "By connecting your account confirm that you agree with our",
    ),
    "profile_status": MessageLookupByLibrary.simpleMessage("Profile Status"),
    "profile_updated_successfully": MessageLookupByLibrary.simpleMessage(
      "Profile updated successfully",
    ),
    "projects": MessageLookupByLibrary.simpleMessage("Projects"),
    "register": MessageLookupByLibrary.simpleMessage("Register"),
    "register_now": MessageLookupByLibrary.simpleMessage("Register Now"),
    "register_your_account": MessageLookupByLibrary.simpleMessage(
      "Register your Account",
    ),
    "register_your_account_desc": MessageLookupByLibrary.simpleMessage(
      "Please enter your details",
    ),
    "reschedule": MessageLookupByLibrary.simpleMessage("Reschedule"),
    "resend_code": MessageLookupByLibrary.simpleMessage("Resend Code"),
    "reserve_online": MessageLookupByLibrary.simpleMessage("Reserve Online"),
    "reserved_units": MessageLookupByLibrary.simpleMessage("Reserved Units"),
    "reset_code_sent_successfully": MessageLookupByLibrary.simpleMessage(
      "Reset code sent successfully",
    ),
    "reset_password": MessageLookupByLibrary.simpleMessage("Reset Password"),
    "retry": MessageLookupByLibrary.simpleMessage("Retry"),
    "salesman": MessageLookupByLibrary.simpleMessage("Salesman"),
    "saudi": MessageLookupByLibrary.simpleMessage("Saudi"),
    "save_changes": MessageLookupByLibrary.simpleMessage("Save Changes"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "search_explore": MessageLookupByLibrary.simpleMessage("Search & Explore"),
    "seaview": MessageLookupByLibrary.simpleMessage("Seaview"),
    "security": MessageLookupByLibrary.simpleMessage("Security"),
    "select_education": MessageLookupByLibrary.simpleMessage(
      "Select education",
    ),
    "select_gender": MessageLookupByLibrary.simpleMessage("Select gender"),
    "select_nationality": MessageLookupByLibrary.simpleMessage(
      "Select nationality",
    ),
    "select_occupation": MessageLookupByLibrary.simpleMessage(
      "Select occupation",
    ),
    "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "similarUnits": MessageLookupByLibrary.simpleMessage("Similar Models"),
    "size": MessageLookupByLibrary.simpleMessage("Size"),
    "skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "skip_for_now": MessageLookupByLibrary.simpleMessage("Skip for Now"),
    "smartHome": MessageLookupByLibrary.simpleMessage("Smart Home"),
    "snapchat_error": MessageLookupByLibrary.simpleMessage(
      "Could not open Snapchat",
    ),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong",
    ),
    "start_your_journey": MessageLookupByLibrary.simpleMessage(
      "Start Your Journey",
    ),
    "success": MessageLookupByLibrary.simpleMessage("Success"),
    "teacher": MessageLookupByLibrary.simpleMessage("Teacher"),
    "term_condtion": MessageLookupByLibrary.simpleMessage(
      " Term and Condition",
    ),
    "terrace": MessageLookupByLibrary.simpleMessage("Terrace"),
    "tiktok_error": MessageLookupByLibrary.simpleMessage(
      "Could not open TikTok",
    ),
    "touch_id": MessageLookupByLibrary.simpleMessage("Touch ID"),
    "twitter_error": MessageLookupByLibrary.simpleMessage(
      "Could not open Twitter",
    ),
    "type": MessageLookupByLibrary.simpleMessage("Type"),
    "unitFeatures": MessageLookupByLibrary.simpleMessage("Model Features"),
    "unitPlan": MessageLookupByLibrary.simpleMessage("Model Plan"),
    "unsupported_file_type": MessageLookupByLibrary.simpleMessage(
      "Unsupported file type",
    ),
    "unverified": MessageLookupByLibrary.simpleMessage("Unverified"),
    "update": MessageLookupByLibrary.simpleMessage("Update"),
    "updateRequired": MessageLookupByLibrary.simpleMessage("Update Required"),
    "updateRequiredBody": MessageLookupByLibrary.simpleMessage(
      "A new version of the app is available. Please update to continue.",
    ),
    "useBiometric": m7,
    "verified": MessageLookupByLibrary.simpleMessage("Verified"),
    "verify": MessageLookupByLibrary.simpleMessage("Verify"),
    "verify_message": MessageLookupByLibrary.simpleMessage(
      "We\'ve sent a 4-digit code to your phone.",
    ),
    "verify_message_email": MessageLookupByLibrary.simpleMessage(
      "We\'ve sent a 4-digit code to your email.",
    ),
    "verify_your_identity": MessageLookupByLibrary.simpleMessage(
      "Verify Your Identity",
    ),
    "version": MessageLookupByLibrary.simpleMessage("Version"),
    "warning": MessageLookupByLibrary.simpleMessage("Warning"),
    "weak_password": MessageLookupByLibrary.simpleMessage(
      "Password is too weak",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
    "welcome_description": MessageLookupByLibrary.simpleMessage(
      "Please enter your data to continue",
    ),
    "welcome_message": MessageLookupByLibrary.simpleMessage(
      "Hello, I need support",
    ),
    "whatsapp_error": MessageLookupByLibrary.simpleMessage(
      "Could not open WhatsApp",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("Yes"),
    "your_session_has_been_expired": MessageLookupByLibrary.simpleMessage(
      "Your session has been expired",
    ),
  };
}
