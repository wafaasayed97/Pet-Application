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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Update Required`
  String get updateRequired {
    return Intl.message(
      'Update Required',
      name: 'updateRequired',
      desc: '',
      args: [],
    );
  }

  /// `A new version of the app is available. Please update to continue.`
  String get updateRequiredBody {
    return Intl.message(
      'A new version of the app is available. Please update to continue.',
      name: 'updateRequiredBody',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Not now`
  String get notNow {
    return Intl.message('Not now', name: 'notNow', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Your session has been expired`
  String get your_session_has_been_expired {
    return Intl.message(
      'Your session has been expired',
      name: 'your_session_has_been_expired',
      desc: '',
      args: [],
    );
  }

  /// `Please login again to continue`
  String get pleaseLoginAgain {
    return Intl.message(
      'Please login again to continue',
      name: 'pleaseLoginAgain',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Please try again later`
  String get pleaseTryAgain {
    return Intl.message(
      'Please try again later',
      name: 'pleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get noInternet {
    return Intl.message(
      'No Internet Connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection and try again`
  String get checkConnection {
    return Intl.message(
      'Please check your internet connection and try again',
      name: 'checkConnection',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get version {
    return Intl.message('Version', name: 'version', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Warning`
  String get warning {
    return Intl.message('Warning', name: 'warning', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `Choose image source`
  String get choose_image_source {
    return Intl.message(
      'Choose image source',
      name: 'choose_image_source',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Hello, I need support`
  String get welcome_message {
    return Intl.message(
      'Hello, I need support',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Could not open WhatsApp`
  String get whatsapp_error {
    return Intl.message(
      'Could not open WhatsApp',
      name: 'whatsapp_error',
      desc: '',
      args: [],
    );
  }

  /// `Could not launch`
  String get could_not_launch {
    return Intl.message(
      'Could not launch',
      name: 'could_not_launch',
      desc: '',
      args: [],
    );
  }

  /// `Could not open Twitter`
  String get twitter_error {
    return Intl.message(
      'Could not open Twitter',
      name: 'twitter_error',
      desc: '',
      args: [],
    );
  }

  /// `Could not open Instagram`
  String get instagram_error {
    return Intl.message(
      'Could not open Instagram',
      name: 'instagram_error',
      desc: '',
      args: [],
    );
  }

  /// `Could not open Snapchat`
  String get snapchat_error {
    return Intl.message(
      'Could not open Snapchat',
      name: 'snapchat_error',
      desc: '',
      args: [],
    );
  }

  /// `Could not open TikTok`
  String get tiktok_error {
    return Intl.message(
      'Could not open TikTok',
      name: 'tiktok_error',
      desc: '',
      args: [],
    );
  }

  /// `File not available`
  String get file_not_available {
    return Intl.message(
      'File not available',
      name: 'file_not_available',
      desc: '',
      args: [],
    );
  }

  /// `PDF viewer is not supported on emulator`
  String get pdf_not_supported_on_emulator {
    return Intl.message(
      'PDF viewer is not supported on emulator',
      name: 'pdf_not_supported_on_emulator',
      desc: '',
      args: [],
    );
  }

  /// `Unsupported file type`
  String get unsupported_file_type {
    return Intl.message(
      'Unsupported file type',
      name: 'unsupported_file_type',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load file`
  String get file_loading_failed {
    return Intl.message(
      'Failed to load file',
      name: 'file_loading_failed',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Please enter your details, and make sure you are entering your correct password`
  String
  get please_enter_your_details_and_make_sure_you_are_entering_your_correct_password {
    return Intl.message(
      'Please enter your details, and make sure you are entering your correct password',
      name:
          'please_enter_your_details_and_make_sure_you_are_entering_your_correct_password',
      desc: '',
      args: [],
    );
  }

  /// `Add Your Email Address`
  String get add_your_email_address {
    return Intl.message(
      'Add Your Email Address',
      name: 'add_your_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password*`
  String get password {
    return Intl.message('Password*', name: 'password', desc: '', args: []);
  }

  /// `Add Your Password`
  String get add_your_password {
    return Intl.message(
      'Add Your Password',
      name: 'add_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Login with Face ID`
  String get login_with_face_id {
    return Intl.message(
      'Login with Face ID',
      name: 'login_with_face_id',
      desc: '',
      args: [],
    );
  }

  /// `Don't Have an Account ? `
  String get dont_have_an_account {
    return Intl.message(
      'Don\'t Have an Account ? ',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Enter your password`
  String get enter_password {
    return Intl.message(
      'Enter your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Password is too weak`
  String get weak_password {
    return Intl.message(
      'Password is too weak',
      name: 'weak_password',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number*`
  String get phone_number {
    return Intl.message(
      'Phone Number*',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_your_phone_number {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `At least 8 characters`
  String get min_8_char {
    return Intl.message(
      'At least 8 characters',
      name: 'min_8_char',
      desc: '',
      args: [],
    );
  }

  /// `Contains an uppercase letter`
  String get contain_uppercase {
    return Intl.message(
      'Contains an uppercase letter',
      name: 'contain_uppercase',
      desc: '',
      args: [],
    );
  }

  /// `Contains a lowercase letter`
  String get contain_lowercase {
    return Intl.message(
      'Contains a lowercase letter',
      name: 'contain_lowercase',
      desc: '',
      args: [],
    );
  }

  /// `Contains a number`
  String get contain_number {
    return Intl.message(
      'Contains a number',
      name: 'contain_number',
      desc: '',
      args: [],
    );
  }

  /// `Contains a special character`
  String get contain_special {
    return Intl.message(
      'Contains a special character',
      name: 'contain_special',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get please_enter_a_valid_phone_number {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'please_enter_a_valid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get phone_number_is_required {
    return Intl.message(
      'Phone number is required',
      name: 'phone_number_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must contain only digits`
  String get phone_number_must_contain_only_digits {
    return Intl.message(
      'Phone number must contain only digits',
      name: 'phone_number_must_contain_only_digits',
      desc: '',
      args: [],
    );
  }

  /// `Register your Account`
  String get register_your_account {
    return Intl.message(
      'Register your Account',
      name: 'register_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your details`
  String get register_your_account_desc {
    return Intl.message(
      'Please enter your details',
      name: 'register_your_account_desc',
      desc: '',
      args: [],
    );
  }

  /// `Email Address*`
  String get email_address {
    return Intl.message(
      'Email Address*',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `Add Your Email Address`
  String get email_hint {
    return Intl.message(
      'Add Your Email Address',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get phone_hint {
    return Intl.message('', name: 'phone_hint', desc: '', args: []);
  }

  /// `Full Name*`
  String get full_name {
    return Intl.message('Full Name*', name: 'full_name', desc: '', args: []);
  }

  /// `Add your full name as in your identity`
  String get full_name_hint {
    return Intl.message(
      'Add your full name as in your identity',
      name: 'full_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get register_now {
    return Intl.message(
      'Register Now',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message('OR', name: 'or', desc: '', args: []);
  }

  /// `Continue as Guest`
  String get continue_as_guest {
    return Intl.message(
      'Continue as Guest',
      name: 'continue_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account?`
  String get already_have_account {
    return Intl.message(
      'Already have an Account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login Now`
  String get login_now {
    return Intl.message('Login Now', name: 'login_now', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Confirm Password*`
  String get confirm_password {
    return Intl.message(
      'Confirm Password*',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter your password`
  String get enterConfirmPasswordHint {
    return Intl.message(
      'Re-enter your password',
      name: 'enterConfirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your full name`
  String get enter_full_name {
    return Intl.message(
      'Please enter your full name',
      name: 'enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get enter_phone_number {
    return Intl.message(
      'Please enter your phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number format`
  String get invalid_phone_number {
    return Intl.message(
      'Invalid phone number format',
      name: 'invalid_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address`
  String get enter_email {
    return Intl.message(
      'Please enter your email address',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format`
  String get invalid_email {
    return Intl.message(
      'Invalid email format',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `Number & Special Character`
  String get contain_number_and_special {
    return Intl.message(
      'Number & Special Character',
      name: 'contain_number_and_special',
      desc: '',
      args: [],
    );
  }

  /// `Continue as Guest`
  String get continue_guest {
    return Intl.message(
      'Continue as Guest',
      name: 'continue_guest',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message('Sign Up', name: 'sign_up', desc: '', args: []);
  }

  /// `Nationality`
  String get nationality {
    return Intl.message('Nationality', name: 'nationality', desc: '', args: []);
  }

  /// `Choose Nationality`
  String get choose_nationality {
    return Intl.message(
      'Choose Nationality',
      name: 'choose_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Identity`
  String get verify_your_identity {
    return Intl.message(
      'Verify Your Identity',
      name: 'verify_your_identity',
      desc: '',
      args: [],
    );
  }

  /// `We've sent a 4-digit code to your phone.`
  String get verify_message {
    return Intl.message(
      'We\'ve sent a 4-digit code to your phone.',
      name: 'verify_message',
      desc: '',
      args: [],
    );
  }

  /// `We've sent a 4-digit code to your email.`
  String get verify_message_email {
    return Intl.message(
      'We\'ve sent a 4-digit code to your email.',
      name: 'verify_message_email',
      desc: '',
      args: [],
    );
  }

  /// `Didn't receive the code?`
  String get didnt_receive_code {
    return Intl.message(
      'Didn\'t receive the code?',
      name: 'didnt_receive_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message('Resend Code', name: 'resend_code', desc: '', args: []);
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Enter the 4-digit code`
  String get enter_otp {
    return Intl.message(
      'Enter the 4-digit code',
      name: 'enter_otp',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Book a Zoom meeting or chat with a TMG representative for personalized guidance`
  String
  get book_a_zoom_meeting_or_chat_with_a_tmg_representative_for_personalized_guidance {
    return Intl.message(
      'Book a Zoom meeting or chat with a TMG representative for personalized guidance',
      name:
          'book_a_zoom_meeting_or_chat_with_a_tmg_representative_for_personalized_guidance',
      desc: '',
      args: [],
    );
  }

  /// `Browse units, models, and communities that suit your lifestyle and budget.`
  String
  get browse_units_models_and_communities_that_suit_your_lifestyle_and_budget {
    return Intl.message(
      'Browse units, models, and communities that suit your lifestyle and budget.',
      name:
          'browse_units_models_and_communities_that_suit_your_lifestyle_and_budget',
      desc: '',
      args: [],
    );
  }

  /// `Choose your unit and reserve it instantly with flexible payment options.`
  String
  get Choose_your_unit_and_reserve_it_instantly_with_flexible_payment_options {
    return Intl.message(
      'Choose your unit and reserve it instantly with flexible payment options.',
      name:
          'Choose_your_unit_and_reserve_it_instantly_with_flexible_payment_options',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Journey`
  String get start_your_journey {
    return Intl.message(
      'Start Your Journey',
      name: 'start_your_journey',
      desc: '',
      args: [],
    );
  }

  /// `Reserve Online`
  String get reserve_online {
    return Intl.message(
      'Reserve Online',
      name: 'reserve_online',
      desc: '',
      args: [],
    );
  }

  /// `Meet Sales Expert`
  String get meet_sales_expert {
    return Intl.message(
      'Meet Sales Expert',
      name: 'meet_sales_expert',
      desc: '',
      args: [],
    );
  }

  /// `Search & Explore`
  String get search_explore {
    return Intl.message(
      'Search & Explore',
      name: 'search_explore',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get password_is_required {
    return Intl.message(
      'Password is required',
      name: 'password_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Login successful!`
  String get login_successful {
    return Intl.message(
      'Login successful!',
      name: 'login_successful',
      desc: '',
      args: [],
    );
  }

  /// `Login failed: `
  String get login_failed {
    return Intl.message(
      'Login failed: ',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Face ID login successful!`
  String get face_id_login_successful {
    return Intl.message(
      'Face ID login successful!',
      name: 'face_id_login_successful',
      desc: '',
      args: [],
    );
  }

  /// `Face ID authentication failed`
  String get face_ID_authentication_failed {
    return Intl.message(
      'Face ID authentication failed',
      name: 'face_ID_authentication_failed',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message('Security', name: 'security', desc: '', args: []);
  }

  /// `Enable Face ID for Quick Login`
  String get enable_face_id_for_quick_login {
    return Intl.message(
      'Enable Face ID for Quick Login',
      name: 'enable_face_id_for_quick_login',
      desc: '',
      args: [],
    );
  }

  /// `Face ID helps you log in instantly while keeping your data safe.`
  String get face_id_description {
    return Intl.message(
      'Face ID helps you log in instantly while keeping your data safe.',
      name: 'face_id_description',
      desc: '',
      args: [],
    );
  }

  /// `Enable Face ID`
  String get enable_face_id {
    return Intl.message(
      'Enable Face ID',
      name: 'enable_face_id',
      desc: '',
      args: [],
    );
  }

  /// `Skip for Now`
  String get skip_for_now {
    return Intl.message(
      'Skip for Now',
      name: 'skip_for_now',
      desc: '',
      args: [],
    );
  }

  /// `Authentication failed`
  String get auth_failed {
    return Intl.message(
      'Authentication failed',
      name: 'auth_failed',
      desc: '',
      args: [],
    );
  }

  /// `Please authenticate to enable local auth`
  String get please_authenticate {
    return Intl.message(
      'Please authenticate to enable local auth',
      name: 'please_authenticate',
      desc: '',
      args: [],
    );
  }

  /// `Your device is not supported`
  String get not_supported_device {
    return Intl.message(
      'Your device is not supported',
      name: 'not_supported_device',
      desc: '',
      args: [],
    );
  }

  /// `Disable Face ID`
  String get disable_face_id {
    return Intl.message(
      'Disable Face ID',
      name: 'disable_face_id',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Face ID is enabled`
  String get face_id_enabled {
    return Intl.message(
      'Face ID is enabled',
      name: 'face_id_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Face ID is disabled`
  String get face_id_disabled {
    return Intl.message(
      'Face ID is disabled',
      name: 'face_id_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Face ID is not enabled`
  String get face_id_not_enabled {
    return Intl.message(
      'Face ID is not enabled',
      name: 'face_id_not_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Projects`
  String get projects {
    return Intl.message('Projects', name: 'projects', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Chatbot`
  String get chatbot {
    return Intl.message('Chatbot', name: 'chatbot', desc: '', args: []);
  }

  /// `Menu`
  String get menu {
    return Intl.message('Menu', name: 'menu', desc: '', args: []);
  }

  /// `Double press to exit`
  String get double_press_to_exit {
    return Intl.message(
      'Double press to exit',
      name: 'double_press_to_exit',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get help_support {
    return Intl.message(
      'Help & Support',
      name: 'help_support',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Please enter your phone number to reset your password`
  String get please_enter_your_phone_number_to_reset_your_password {
    return Intl.message(
      'Please enter your phone number to reset your password',
      name: 'please_enter_your_phone_number_to_reset_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Reset code sent successfully`
  String get reset_code_sent_successfully {
    return Intl.message(
      'Reset code sent successfully',
      name: 'reset_code_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent to: `
  String get otp_sent_to {
    return Intl.message(
      'OTP sent to: ',
      name: 'otp_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the new phone number to reset your password`
  String get please_enter_the_new_phone_number_to_reset_your_password {
    return Intl.message(
      'Please enter the new phone number to reset your password',
      name: 'please_enter_the_new_phone_number_to_reset_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Password reset successful`
  String get password_reset_successful {
    return Intl.message(
      'Password reset successful',
      name: 'password_reset_successful',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password`
  String get enter_new_your_password {
    return Intl.message(
      'Enter your new password',
      name: 'enter_new_your_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password*`
  String get new_password {
    return Intl.message(
      'New Password*',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password*`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password*',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter to confirm your password`
  String get enter_to_confirm_your_password {
    return Intl.message(
      'Enter to confirm your password',
      name: 'enter_to_confirm_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirm_password_title {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password_title',
      desc: '',
      args: [],
    );
  }

  /// `No saved credentials found`
  String get no_saved_credentials {
    return Intl.message(
      'No saved credentials found',
      name: 'no_saved_credentials',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personal_info {
    return Intl.message(
      'Personal Info',
      name: 'personal_info',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Enter your name`
  String get enter_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get enter_email_address {
    return Intl.message(
      'Enter your email address',
      name: 'enter_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Enter your address`
  String get enter_address {
    return Intl.message(
      'Enter your address',
      name: 'enter_address',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message('Education', name: 'education', desc: '', args: []);
  }

  /// `Select education`
  String get select_education {
    return Intl.message(
      'Select education',
      name: 'select_education',
      desc: '',
      args: [],
    );
  }

  /// `High School`
  String get high_school {
    return Intl.message('High School', name: 'high_school', desc: '', args: []);
  }

  /// `Bachelor Degree`
  String get bachelor_degree {
    return Intl.message(
      'Bachelor Degree',
      name: 'bachelor_degree',
      desc: '',
      args: [],
    );
  }

  /// `Master Degree`
  String get master_degree {
    return Intl.message(
      'Master Degree',
      name: 'master_degree',
      desc: '',
      args: [],
    );
  }

  /// `PhD`
  String get phd {
    return Intl.message('PhD', name: 'phd', desc: '', args: []);
  }

  /// `Occupation`
  String get occupation {
    return Intl.message('Occupation', name: 'occupation', desc: '', args: []);
  }

  /// `Select occupation`
  String get select_occupation {
    return Intl.message(
      'Select occupation',
      name: 'select_occupation',
      desc: '',
      args: [],
    );
  }

  /// `Doctor`
  String get doctor {
    return Intl.message('Doctor', name: 'doctor', desc: '', args: []);
  }

  /// `Engineer`
  String get engineer {
    return Intl.message('Engineer', name: 'engineer', desc: '', args: []);
  }

  /// `Teacher`
  String get teacher {
    return Intl.message('Teacher', name: 'teacher', desc: '', args: []);
  }

  /// `Lawyer`
  String get lawyer {
    return Intl.message('Lawyer', name: 'lawyer', desc: '', args: []);
  }

  /// `Other`
  String get other {
    return Intl.message('Other', name: 'other', desc: '', args: []);
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `Select gender`
  String get select_gender {
    return Intl.message(
      'Select gender',
      name: 'select_gender',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message('Male', name: 'male', desc: '', args: []);
  }

  /// `Female`
  String get female {
    return Intl.message('Female', name: 'female', desc: '', args: []);
  }

  /// `Select nationality`
  String get select_nationality {
    return Intl.message(
      'Select nationality',
      name: 'select_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Egyptian`
  String get egyptian {
    return Intl.message('Egyptian', name: 'egyptian', desc: '', args: []);
  }

  /// `Saudi`
  String get saudi {
    return Intl.message('Saudi', name: 'saudi', desc: '', args: []);
  }

  /// `Emirati`
  String get emirati {
    return Intl.message('Emirati', name: 'emirati', desc: '', args: []);
  }

  /// `Kuwaiti`
  String get kuwaiti {
    return Intl.message('Kuwaiti', name: 'kuwaiti', desc: '', args: []);
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message('My Profile', name: 'my_profile', desc: '', args: []);
  }

  /// `My Info`
  String get my_info {
    return Intl.message('My Info', name: 'my_info', desc: '', args: []);
  }

  /// `My Units`
  String get my_units {
    return Intl.message('My Units', name: 'my_units', desc: '', args: []);
  }

  /// `My Appointments`
  String get my_appointments {
    return Intl.message(
      'My Appointments',
      name: 'my_appointments',
      desc: '',
      args: [],
    );
  }

  /// `My Units - Coming Soon`
  String get coming_soon_units {
    return Intl.message(
      'My Units - Coming Soon',
      name: 'coming_soon_units',
      desc: '',
      args: [],
    );
  }

  /// `My Appointments - Coming Soon`
  String get coming_soon_appointments {
    return Intl.message(
      'My Appointments - Coming Soon',
      name: 'coming_soon_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Reserved Units`
  String get reserved_units {
    return Intl.message(
      'Reserved Units',
      name: 'reserved_units',
      desc: '',
      args: [],
    );
  }

  /// `Profile Status`
  String get profile_status {
    return Intl.message(
      'Profile Status',
      name: 'profile_status',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get verified {
    return Intl.message('Verified', name: 'verified', desc: '', args: []);
  }

  /// `Unverified`
  String get unverified {
    return Intl.message('Unverified', name: 'unverified', desc: '', args: []);
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Device not supported`
  String get device_not_supported {
    return Intl.message(
      'Device not supported',
      name: 'device_not_supported',
      desc: '',
      args: [],
    );
  }

  /// `Authentication failed`
  String get authentication_failed {
    return Intl.message(
      'Authentication failed',
      name: 'authentication_failed',
      desc: '',
      args: [],
    );
  }

  /// `Face ID error :`
  String get face_id_error {
    return Intl.message(
      'Face ID error :',
      name: 'face_id_error',
      desc: '',
      args: [],
    );
  }

  /// `Not Verified`
  String get not_verified {
    return Intl.message(
      'Not Verified',
      name: 'not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Save Changes`
  String get save_changes {
    return Intl.message(
      'Save Changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully`
  String get profile_updated_successfully {
    return Intl.message(
      'Profile updated successfully',
      name: 'profile_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a new strong password`
  String get please_enter_new_strong_pass {
    return Intl.message(
      'Please enter a new strong password',
      name: 'please_enter_new_strong_pass',
      desc: '',
      args: [],
    );
  }

  /// `Enter your national ID`
  String get enter_national_id {
    return Intl.message(
      'Enter your national ID',
      name: 'enter_national_id',
      desc: '',
      args: [],
    );
  }

  /// `National ID`
  String get national_id {
    return Intl.message('National ID', name: 'national_id', desc: '', args: []);
  }

  /// `Invalid national ID`
  String get invalid_national_id {
    return Intl.message(
      'Invalid national ID',
      name: 'invalid_national_id',
      desc: '',
      args: [],
    );
  }

  /// `Enter your passport number`
  String get enter_passport_number {
    return Intl.message(
      'Enter your passport number',
      name: 'enter_passport_number',
      desc: '',
      args: [],
    );
  }

  /// `Passport Number`
  String get passport_number {
    return Intl.message(
      'Passport Number',
      name: 'passport_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name in Arabic`
  String get enter_arabic_name {
    return Intl.message(
      'Enter your name in Arabic',
      name: 'enter_arabic_name',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Name`
  String get arabic_name {
    return Intl.message('Arabic Name', name: 'arabic_name', desc: '', args: []);
  }

  /// `Mandatory fields are locked until verification`
  String get mandatory_fields_locked {
    return Intl.message(
      'Mandatory fields are locked until verification',
      name: 'mandatory_fields_locked',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `You are not logged in`
  String get not_logged_in {
    return Intl.message(
      'You are not logged in',
      name: 'not_logged_in',
      desc: '',
      args: [],
    );
  }

  /// `Enable {biometricType} for quick login`
  String enableBiometric(Object biometricType) {
    return Intl.message(
      'Enable $biometricType for quick login',
      name: 'enableBiometric',
      desc: '',
      args: [biometricType],
    );
  }

  /// `Use {biometricType} to securely access your account`
  String useBiometric(Object biometricType) {
    return Intl.message(
      'Use $biometricType to securely access your account',
      name: 'useBiometric',
      desc: '',
      args: [biometricType],
    );
  }

  /// `Authentication failed {count} times`
  String auth_max(Object count) {
    return Intl.message(
      'Authentication failed $count times',
      name: 'auth_max',
      desc: '',
      args: [count],
    );
  }

  /// `Authentication error: {error}`
  String auth_error(Object error) {
    return Intl.message(
      'Authentication error: $error',
      name: 'auth_error',
      desc: '',
      args: [error],
    );
  }

  /// `{biometric} enabled`
  String auth_success(Object biometric) {
    return Intl.message(
      '$biometric enabled',
      name: 'auth_success',
      desc: '',
      args: [biometric],
    );
  }

  /// `Authentication disabled`
  String get auth_disabled {
    return Intl.message(
      'Authentication disabled',
      name: 'auth_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Auth error: {error}. Attempts left: {count}`
  String auth_error_with_attempts(Object error, Object count) {
    return Intl.message(
      'Auth error: $error. Attempts left: $count',
      name: 'auth_error_with_attempts',
      desc: '',
      args: [error, count],
    );
  }

  /// `Enable {biometric}`
  String enable_biometric(Object biometric) {
    return Intl.message(
      'Enable $biometric',
      name: 'enable_biometric',
      desc: '',
      args: [biometric],
    );
  }

  /// `Disable {biometric}`
  String disable_biometric(Object biometric) {
    return Intl.message(
      'Disable $biometric',
      name: 'disable_biometric',
      desc: '',
      args: [biometric],
    );
  }

  /// `Biometric not enabled`
  String get biometric_not_enabled {
    return Intl.message(
      'Biometric not enabled',
      name: 'biometric_not_enabled',
      desc: '',
      args: [],
    );
  }

  /// `Face ID`
  String get face_id {
    return Intl.message('Face ID', name: 'face_id', desc: '', args: []);
  }

  /// `Touch ID`
  String get touch_id {
    return Intl.message('Touch ID', name: 'touch_id', desc: '', args: []);
  }

  /// `Face Unlock`
  String get face_unlock {
    return Intl.message('Face Unlock', name: 'face_unlock', desc: '', args: []);
  }

  /// `Fingerprint`
  String get fingerprint {
    return Intl.message('Fingerprint', name: 'fingerprint', desc: '', args: []);
  }

  /// `Biometric`
  String get biometric {
    return Intl.message('Biometric', name: 'biometric', desc: '', args: []);
  }

  /// `Please enter your name`
  String get name_required {
    return Intl.message(
      'Please enter your name',
      name: 'name_required',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 3 characters`
  String get name_too_short {
    return Intl.message(
      'Name must be at least 3 characters',
      name: 'name_too_short',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your Arabic name`
  String get arabic_name_required {
    return Intl.message(
      'Please enter your Arabic name',
      name: 'arabic_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Arabic name must contain only Arabic characters`
  String get arabic_name_invalid {
    return Intl.message(
      'Arabic name must contain only Arabic characters',
      name: 'arabic_name_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get phone_required {
    return Intl.message(
      'Please enter your phone number',
      name: 'phone_required',
      desc: '',
      args: [],
    );
  }

  /// `Phone number must be 10-15 digits`
  String get phone_invalid {
    return Intl.message(
      'Phone number must be 10-15 digits',
      name: 'phone_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address`
  String get email_required {
    return Intl.message(
      'Please enter your email address',
      name: 'email_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get email_invalid {
    return Intl.message(
      'Please enter a valid email address',
      name: 'email_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your address`
  String get address_required {
    return Intl.message(
      'Please enter your address',
      name: 'address_required',
      desc: '',
      args: [],
    );
  }

  /// `Address must be at least 5 characters`
  String get address_too_short {
    return Intl.message(
      'Address must be at least 5 characters',
      name: 'address_too_short',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your national ID`
  String get national_id_required {
    return Intl.message(
      'Please enter your national ID',
      name: 'national_id_required',
      desc: '',
      args: [],
    );
  }

  /// `National ID must be exactly 14 digits`
  String get national_id_must_be_14_digits {
    return Intl.message(
      'National ID must be exactly 14 digits',
      name: 'national_id_must_be_14_digits',
      desc: '',
      args: [],
    );
  }

  /// `National ID must contain only numbers`
  String get national_id_must_be_digits {
    return Intl.message(
      'National ID must contain only numbers',
      name: 'national_id_must_be_digits',
      desc: '',
      args: [],
    );
  }

  /// `Invalid century digit in national ID`
  String get national_id_invalid_century {
    return Intl.message(
      'Invalid century digit in national ID',
      name: 'national_id_invalid_century',
      desc: '',
      args: [],
    );
  }

  /// `Invalid date in national ID`
  String get national_id_invalid_date {
    return Intl.message(
      'Invalid date in national ID',
      name: 'national_id_invalid_date',
      desc: '',
      args: [],
    );
  }

  /// `Invalid month in national ID (must be 01-12)`
  String get national_id_invalid_month {
    return Intl.message(
      'Invalid month in national ID (must be 01-12)',
      name: 'national_id_invalid_month',
      desc: '',
      args: [],
    );
  }

  /// `Invalid day in national ID (must be 01-31)`
  String get national_id_invalid_day {
    return Intl.message(
      'Invalid day in national ID (must be 01-31)',
      name: 'national_id_invalid_day',
      desc: '',
      args: [],
    );
  }

  /// `Invalid governorate code in national ID`
  String get national_id_invalid_governorate {
    return Intl.message(
      'Invalid governorate code in national ID',
      name: 'national_id_invalid_governorate',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your passport number`
  String get passport_required {
    return Intl.message(
      'Please enter your passport number',
      name: 'passport_required',
      desc: '',
      args: [],
    );
  }

  /// `Passport number must be between 6-20 characters`
  String get passport_length_invalid {
    return Intl.message(
      'Passport number must be between 6-20 characters',
      name: 'passport_length_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Passport number can only contain letters and numbers`
  String get passport_format_invalid {
    return Intl.message(
      'Passport number can only contain letters and numbers',
      name: 'passport_format_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Passport number cannot be all zeros`
  String get passport_cannot_be_all_zeros {
    return Intl.message(
      'Passport number cannot be all zeros',
      name: 'passport_cannot_be_all_zeros',
      desc: '',
      args: [],
    );
  }

  /// `Please fix the errors before saving`
  String get please_fix_validation_errors {
    return Intl.message(
      'Please fix the errors before saving',
      name: 'please_fix_validation_errors',
      desc: '',
      args: [],
    );
  }

  /// `Please select your nationality`
  String get please_select_nationality {
    return Intl.message(
      'Please select your nationality',
      name: 'please_select_nationality',
      desc: '',
      args: [],
    );
  }

  /// `Check`
  String get check {
    return Intl.message('Check', name: 'check', desc: '', args: []);
  }

  /// `Our Projects`
  String get our_projects {
    return Intl.message(
      'Our Projects',
      name: 'our_projects',
      desc: '',
      args: [],
    );
  }

  /// `Salesman`
  String get salesman {
    return Intl.message('Salesman', name: 'salesman', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Reschedule`
  String get reschedule {
    return Intl.message('Reschedule', name: 'reschedule', desc: '', args: []);
  }

  /// `Password Matches`
  String get passwordMatches {
    return Intl.message(
      'Password Matches',
      name: 'passwordMatches',
      desc: '',
      args: [],
    );
  }

  /// `Model Features`
  String get unitFeatures {
    return Intl.message(
      'Model Features',
      name: 'unitFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message('Type', name: 'type', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Bedrooms`
  String get bedrooms {
    return Intl.message('Bedrooms', name: 'bedrooms', desc: '', args: []);
  }

  /// `Smart Home`
  String get smartHome {
    return Intl.message('Smart Home', name: 'smartHome', desc: '', args: []);
  }

  /// `Bathrooms`
  String get bathrooms {
    return Intl.message('Bathrooms', name: 'bathrooms', desc: '', args: []);
  }

  /// `Maintenance`
  String get maintenance {
    return Intl.message('Maintenance', name: 'maintenance', desc: '', args: []);
  }

  /// `Size`
  String get size {
    return Intl.message('Size', name: 'size', desc: '', args: []);
  }

  /// `Garage`
  String get garage {
    return Intl.message('Garage', name: 'garage', desc: '', args: []);
  }

  /// `Delivery Date`
  String get deliveryDate {
    return Intl.message(
      'Delivery Date',
      name: 'deliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Finishing`
  String get finishing {
    return Intl.message('Finishing', name: 'finishing', desc: '', args: []);
  }

  /// `Model Plan`
  String get unitPlan {
    return Intl.message('Model Plan', name: 'unitPlan', desc: '', args: []);
  }

  /// `Apartment`
  String get apartment {
    return Intl.message('Apartment', name: 'apartment', desc: '', args: []);
  }

  /// `Living Room`
  String get livingRoom {
    return Intl.message('Living Room', name: 'livingRoom', desc: '', args: []);
  }

  /// `Kitchen`
  String get kitchen {
    return Intl.message('Kitchen', name: 'kitchen', desc: '', args: []);
  }

  /// `Terrace`
  String get terrace {
    return Intl.message('Terrace', name: 'terrace', desc: '', args: []);
  }

  /// `Floor Plan`
  String get floorPlan {
    return Intl.message('Floor Plan', name: 'floorPlan', desc: '', args: []);
  }

  /// `Similar Models`
  String get similarUnits {
    return Intl.message(
      'Similar Models',
      name: 'similarUnits',
      desc: '',
      args: [],
    );
  }

  /// `Connect to Salesman`
  String get connectToSalesman {
    return Intl.message(
      'Connect to Salesman',
      name: 'connectToSalesman',
      desc: '',
      args: [],
    );
  }

  /// `Chalet`
  String get chalet {
    return Intl.message('Chalet', name: 'chalet', desc: '', args: []);
  }

  /// `Seaview`
  String get seaview {
    return Intl.message('Seaview', name: 'seaview', desc: '', args: []);
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `Let's Get Started`
  String get lets_start {
    return Intl.message(
      'Let\'s Get Started',
      name: 'lets_start',
      desc: '',
      args: [],
    );
  }

  /// `Included`
  String get included {
    return Intl.message('Included', name: 'included', desc: '', args: []);
  }

  /// `create an account ?`
  String get create_an_account {
    return Intl.message(
      'create an account ?',
      name: 'create_an_account',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message('First Name', name: 'first_name', desc: '', args: []);
  }

  /// `Last Name`
  String get last_name {
    return Intl.message('Last Name', name: 'last_name', desc: '', args: []);
  }

  /// `Enter your first name`
  String get enter_first_name {
    return Intl.message(
      'Enter your first name',
      name: 'enter_first_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get enter_last_name {
    return Intl.message(
      'Enter your last name',
      name: 'enter_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Add Your First Name`
  String get first_name_hint {
    return Intl.message(
      'Add Your First Name',
      name: 'first_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Add Your Last Name`
  String get last_name_hint {
    return Intl.message(
      'Add Your Last Name',
      name: 'last_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please fill all fields`
  String get please_fill_all_fields {
    return Intl.message(
      'Please fill all fields',
      name: 'please_fill_all_fields',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get login_success_message {
    return Intl.message(
      'Login Successful',
      name: 'login_success_message',
      desc: '',
      args: [],
    );
  }

  /// `Login Failed`
  String get login_failed_message {
    return Intl.message(
      'Login Failed',
      name: 'login_failed_message',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your data to continue`
  String get welcome_description {
    return Intl.message(
      'Please enter your data to continue',
      name: 'welcome_description',
      desc: '',
      args: [],
    );
  }

  /// `By connecting your account confirm that you agree with our`
  String get privacy_policy {
    return Intl.message(
      'By connecting your account confirm that you agree with our',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// ` Term and Condition`
  String get term_condtion {
    return Intl.message(
      ' Term and Condition',
      name: 'term_condtion',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
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
