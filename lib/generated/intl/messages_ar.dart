// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(error) => "خطأ في التحقق: ${error}";

  static String m1(error, count) =>
      "خطأ في المصادقة: ${error}. المحاولات المتبقية: ${count}";

  static String m2(count) => "فشل التحقق ${count} مرات";

  static String m3(biometric) => "تم تفعيل ${biometric}";

  static String m4(biometric) => "إيقاف ${biometric}";

  static String m5(biometricType) =>
      "فعّل ${biometricType} لتسجيل الدخول السريع";

  static String m6(biometric) => "تفعيل ${biometric}";

  static String m7(biometricType) =>
      "استخدم ${biometricType} للوصول الآمن إلى حسابك";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Choose_your_unit_and_reserve_it_instantly_with_flexible_payment_options":
        MessageLookupByLibrary.simpleMessage(
          "اختر وحدتك واحجزها فورًا مع خيارات دفع مرنة.",
        ),
    "add_your_email_address": MessageLookupByLibrary.simpleMessage(
      "اضافة عنوان بريدك الالكتروني",
    ),
    "add_your_password": MessageLookupByLibrary.simpleMessage(
      "اضافة كلمة المرور",
    ),
    "address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "address_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال العنوان",
    ),
    "address_too_short": MessageLookupByLibrary.simpleMessage(
      "العنوان يجب أن يكون 5 أحرف على الأقل",
    ),
    "already_have_account": MessageLookupByLibrary.simpleMessage(
      "لديك حساب بالفعل؟",
    ),
    "apartment": MessageLookupByLibrary.simpleMessage("الشقة"),
    "arabic_name": MessageLookupByLibrary.simpleMessage("الاسم باللغة العربية"),
    "arabic_name_invalid": MessageLookupByLibrary.simpleMessage(
      "الاسم بالعربية يجب أن يحتوي على أحرف عربية فقط",
    ),
    "arabic_name_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال الاسم بالعربية",
    ),
    "auth_disabled": MessageLookupByLibrary.simpleMessage("تم إيقاف التحقق"),
    "auth_error": m0,
    "auth_error_with_attempts": m1,
    "auth_failed": MessageLookupByLibrary.simpleMessage("فشل التحقق"),
    "auth_max": m2,
    "auth_success": m3,
    "authentication_failed": MessageLookupByLibrary.simpleMessage(
      "فشلت المصادقة",
    ),
    "bachelor_degree": MessageLookupByLibrary.simpleMessage("بكالوريوس"),
    "bathrooms": MessageLookupByLibrary.simpleMessage("الحمامات"),
    "bedrooms": MessageLookupByLibrary.simpleMessage("غرف النوم"),
    "biometric": MessageLookupByLibrary.simpleMessage("المصادقة الحيوية"),
    "biometric_not_enabled": MessageLookupByLibrary.simpleMessage(
      "المصادقة البيومترية غير مفعّلة",
    ),
    "book_a_zoom_meeting_or_chat_with_a_tmg_representative_for_personalized_guidance":
        MessageLookupByLibrary.simpleMessage(
          "احجز اجتماع Zoom أو تحدث مع ممثل TMG للحصول على إرشادات مخصصة",
        ),
    "browse_units_models_and_communities_that_suit_your_lifestyle_and_budget":
        MessageLookupByLibrary.simpleMessage(
          "تصفح الوحدات والنماذج والمجتمعات التي تناسب أسلوب حياتك وميزانيتك.",
        ),
    "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "chalet": MessageLookupByLibrary.simpleMessage("شاليه"),
    "change_language": MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
    "chatbot": MessageLookupByLibrary.simpleMessage("المساعد الذكي"),
    "check": MessageLookupByLibrary.simpleMessage("اطلع على"),
    "choose_image_source": MessageLookupByLibrary.simpleMessage(
      "اختر مصدر الصورة",
    ),
    "choose_nationality": MessageLookupByLibrary.simpleMessage("اختر الجنسية"),
    "coming_soon_appointments": MessageLookupByLibrary.simpleMessage(
      "مواعيدي - قريباً",
    ),
    "coming_soon_units": MessageLookupByLibrary.simpleMessage(
      "وحداتي - قريباً",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirm_new_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور الجديدة*",
    ),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور*",
    ),
    "confirm_password_title": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "connectToSalesman": MessageLookupByLibrary.simpleMessage(
      "التواصل مع المندوب",
    ),
    "contain_lowercase": MessageLookupByLibrary.simpleMessage(
      "تحتوي على حرف صغير",
    ),
    "contain_number": MessageLookupByLibrary.simpleMessage("تحتوي على رقم"),
    "contain_number_and_special": MessageLookupByLibrary.simpleMessage(
      "يحتوي على ارقام و رموز",
    ),
    "contain_special": MessageLookupByLibrary.simpleMessage(
      "تحتوي على رمز خاص",
    ),
    "contain_uppercase": MessageLookupByLibrary.simpleMessage(
      "تحتوي على حرف كبير",
    ),
    "continue_as_guest": MessageLookupByLibrary.simpleMessage("المتابعة كضيف"),
    "continue_guest": MessageLookupByLibrary.simpleMessage("المتابعة كضيف"),
    "could_not_launch": MessageLookupByLibrary.simpleMessage("تعذر الفتح"),
    "create_an_account": MessageLookupByLibrary.simpleMessage(" انشاء حساب"),
    "delete_account": MessageLookupByLibrary.simpleMessage("حذف الحساب"),
    "deliveryDate": MessageLookupByLibrary.simpleMessage("تاريخ التسليم"),
    "device_not_supported": MessageLookupByLibrary.simpleMessage(
      "الجهاز غير مدعوم",
    ),
    "didnt_receive_code": MessageLookupByLibrary.simpleMessage(
      "لم تستلم الرمز؟",
    ),
    "disable_biometric": m4,
    "disable_face_id": MessageLookupByLibrary.simpleMessage("تعطيل Face ID"),
    "doctor": MessageLookupByLibrary.simpleMessage("طبيب"),
    "done": MessageLookupByLibrary.simpleMessage("تم"),
    "dont_have_account": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
    "dont_have_an_account": MessageLookupByLibrary.simpleMessage(
      "ليس لديك حساب؟",
    ),
    "double_press_to_exit": MessageLookupByLibrary.simpleMessage(
      "اضغط مرتين للخروج",
    ),
    "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "education": MessageLookupByLibrary.simpleMessage("التعليم"),
    "egyptian": MessageLookupByLibrary.simpleMessage("مصري"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الالكتروني"),
    "email_address": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني*"),
    "email_hint": MessageLookupByLibrary.simpleMessage("أدخل بريدك الإلكتروني"),
    "email_invalid": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال بريد إلكتروني صحيح",
    ),
    "email_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال البريد الإلكتروني",
    ),
    "emirati": MessageLookupByLibrary.simpleMessage("إماراتي"),
    "enableBiometric": m5,
    "enable_biometric": m6,
    "enable_face_id": MessageLookupByLibrary.simpleMessage("تمكين Face ID"),
    "enable_face_id_for_quick_login": MessageLookupByLibrary.simpleMessage(
      "تمكين Face ID للدخول سريع",
    ),
    "engineer": MessageLookupByLibrary.simpleMessage("مهندس"),
    "enterConfirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "أعد إدخال كلمة المرور",
    ),
    "enter_address": MessageLookupByLibrary.simpleMessage("أدخل عنوانك"),
    "enter_arabic_name": MessageLookupByLibrary.simpleMessage(
      "أدخل اسمك باللغة العربية",
    ),
    "enter_email": MessageLookupByLibrary.simpleMessage(
      "من فضلك أدخل بريدك الإلكتروني",
    ),
    "enter_email_address": MessageLookupByLibrary.simpleMessage(
      "أدخل بريدك الإلكتروني",
    ),
    "enter_first_name": MessageLookupByLibrary.simpleMessage(
      "ادخل الاسم الاول",
    ),
    "enter_full_name": MessageLookupByLibrary.simpleMessage(
      "من فضلك أدخل اسمك الكامل",
    ),
    "enter_last_name": MessageLookupByLibrary.simpleMessage(
      "ادخل الاسم الاخير",
    ),
    "enter_name": MessageLookupByLibrary.simpleMessage("أدخل اسمك"),
    "enter_national_id": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم الهوية الوطنية",
    ),
    "enter_new_your_password": MessageLookupByLibrary.simpleMessage(
      "أدخل كلمة المرور الجديدة",
    ),
    "enter_otp": MessageLookupByLibrary.simpleMessage(
      "أدخل الرمز المكون من 4 أرقام",
    ),
    "enter_passport_number": MessageLookupByLibrary.simpleMessage(
      "أدخل رقم جواز السفر",
    ),
    "enter_password": MessageLookupByLibrary.simpleMessage("أدخل كلمة المرور"),
    "enter_phone_number": MessageLookupByLibrary.simpleMessage(
      "من فضلك أدخل رقم الجوال",
    ),
    "enter_to_confirm_your_password": MessageLookupByLibrary.simpleMessage(
      "أدخل لتأكيد كلمة المرور",
    ),
    "enter_your_phone_number": MessageLookupByLibrary.simpleMessage(
      "ادخل رقم الهاتف",
    ),
    "error": MessageLookupByLibrary.simpleMessage("خطأ"),
    "face_ID_authentication_failed": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بواسطة Face ID فشل",
    ),
    "face_id": MessageLookupByLibrary.simpleMessage("بصمة الوجه"),
    "face_id_description": MessageLookupByLibrary.simpleMessage(
      "Face ID يساعدك على تسجيل الدخول بسرعة ومحافظة بياناتك.",
    ),
    "face_id_disabled": MessageLookupByLibrary.simpleMessage("Face ID معطل"),
    "face_id_enabled": MessageLookupByLibrary.simpleMessage("Face ID مفعل"),
    "face_id_error": MessageLookupByLibrary.simpleMessage(
      " : خطأ في بصمة الوجه",
    ),
    "face_id_login_successful": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بواسطة Face ID بنجاح!",
    ),
    "face_id_not_enabled": MessageLookupByLibrary.simpleMessage(
      "Face ID غير مفعل",
    ),
    "face_unlock": MessageLookupByLibrary.simpleMessage("فتح بالوجه"),
    "female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "file_loading_failed": MessageLookupByLibrary.simpleMessage(
      "فشل تحميل الملف",
    ),
    "file_not_available": MessageLookupByLibrary.simpleMessage(
      "الملف غير متاح",
    ),
    "fingerprint": MessageLookupByLibrary.simpleMessage("بصمة الإصبع"),
    "finishing": MessageLookupByLibrary.simpleMessage("التشطيب"),
    "first_name": MessageLookupByLibrary.simpleMessage("الاسم الاول"),
    "first_name_hint": MessageLookupByLibrary.simpleMessage("ادخل الاسم الاول"),
    "floorPlan": MessageLookupByLibrary.simpleMessage("مخطط الطابق"),
    "forgot_password": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل*"),
    "full_name_hint": MessageLookupByLibrary.simpleMessage(
      "أدخل اسمك كما هو في الهوية",
    ),
    "gallery": MessageLookupByLibrary.simpleMessage("المعرض"),
    "garage": MessageLookupByLibrary.simpleMessage("الجراج"),
    "gender": MessageLookupByLibrary.simpleMessage("النوع"),
    "help_support": MessageLookupByLibrary.simpleMessage("المساعدة والدعم"),
    "high_school": MessageLookupByLibrary.simpleMessage("الثانوية العامة"),
    "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "included": MessageLookupByLibrary.simpleMessage("مشمولة"),
    "instagram_error": MessageLookupByLibrary.simpleMessage(
      "تعذر فتح إنستغرام",
    ),
    "invalid_email": MessageLookupByLibrary.simpleMessage(
      "صيغة البريد الإلكتروني غير صحيحة",
    ),
    "invalid_national_id": MessageLookupByLibrary.simpleMessage(
      "رقم الهوية الوطنية غير صالح",
    ),
    "invalid_phone_number": MessageLookupByLibrary.simpleMessage(
      "صيغة رقم الجوال غير صحيحة",
    ),
    "kitchen": MessageLookupByLibrary.simpleMessage("المطبخ"),
    "kuwaiti": MessageLookupByLibrary.simpleMessage("كويتي"),
    "language": MessageLookupByLibrary.simpleMessage("الغة"),
    "last_name": MessageLookupByLibrary.simpleMessage("الاسم الاخير"),
    "last_name_hint": MessageLookupByLibrary.simpleMessage("ادخل الاسم الاخير"),
    "lawyer": MessageLookupByLibrary.simpleMessage("محامي"),
    "lets_start": MessageLookupByLibrary.simpleMessage("ابدء"),
    "livingRoom": MessageLookupByLibrary.simpleMessage("غرفة المعيشة"),
    "loading": MessageLookupByLibrary.simpleMessage("جار التحميل..."),
    "location": MessageLookupByLibrary.simpleMessage("الموقع"),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "login_failed": MessageLookupByLibrary.simpleMessage("تسجيل الدخول فشل: "),
    "login_failed_message": MessageLookupByLibrary.simpleMessage(
      "فشل تسجيل الدخول",
    ),
    "login_now": MessageLookupByLibrary.simpleMessage("تسجيل الدخول الآن"),
    "login_success_message": MessageLookupByLibrary.simpleMessage(
      "تم تسجيل الدخول بنجاح",
    ),
    "login_successful": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول بنجاح!",
    ),
    "login_with_face_id": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول باستخدام Face ID",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "maintenance": MessageLookupByLibrary.simpleMessage("الصيانة"),
    "male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "mandatory_fields_locked": MessageLookupByLibrary.simpleMessage(
      "الحقول الإلزامية مقفلة حتى التحقق",
    ),
    "master_degree": MessageLookupByLibrary.simpleMessage("ماجستير"),
    "meet_sales_expert": MessageLookupByLibrary.simpleMessage(
      "قابل خبير المبيعات",
    ),
    "menu": MessageLookupByLibrary.simpleMessage("القائمة"),
    "min_8_char": MessageLookupByLibrary.simpleMessage("على الأقل 8 أحرف"),
    "my_appointments": MessageLookupByLibrary.simpleMessage("مواعيدي"),
    "my_info": MessageLookupByLibrary.simpleMessage("معلوماتي"),
    "my_profile": MessageLookupByLibrary.simpleMessage("ملفي الشخصي"),
    "my_units": MessageLookupByLibrary.simpleMessage("وحداتي"),
    "name": MessageLookupByLibrary.simpleMessage("الاسم"),
    "name_required": MessageLookupByLibrary.simpleMessage("برجاء إدخال الاسم"),
    "name_too_short": MessageLookupByLibrary.simpleMessage(
      "الاسم يجب أن يكون 3 أحرف على الأقل",
    ),
    "national_id": MessageLookupByLibrary.simpleMessage("الهوية الوطنية"),
    "national_id_invalid_century": MessageLookupByLibrary.simpleMessage(
      "رقم القرن في الرقم القومي غير صحيح",
    ),
    "national_id_invalid_date": MessageLookupByLibrary.simpleMessage(
      "تاريخ الميلاد في الرقم القومي غير صحيح",
    ),
    "national_id_invalid_day": MessageLookupByLibrary.simpleMessage(
      "اليوم في الرقم القومي غير صحيح (يجب أن يكون من 01-31)",
    ),
    "national_id_invalid_governorate": MessageLookupByLibrary.simpleMessage(
      "كود المحافظة في الرقم القومي غير صحيح",
    ),
    "national_id_invalid_month": MessageLookupByLibrary.simpleMessage(
      "الشهر في الرقم القومي غير صحيح (يجب أن يكون من 01-12)",
    ),
    "national_id_must_be_14_digits": MessageLookupByLibrary.simpleMessage(
      "الرقم القومي يجب أن يكون 14 رقم بالضبط",
    ),
    "national_id_must_be_digits": MessageLookupByLibrary.simpleMessage(
      "الرقم القومي يجب أن يحتوي على أرقام فقط",
    ),
    "national_id_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال الرقم القومي",
    ),
    "nationality": MessageLookupByLibrary.simpleMessage("الجنسية"),
    "new_password": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور الجديدة*",
    ),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "noInternet": MessageLookupByLibrary.simpleMessage(
      "لا يوجد اتصال بالإنترنت",
    ),
    "no_saved_credentials": MessageLookupByLibrary.simpleMessage(
      "لا توجد بيانات اعتماد محفوظة",
    ),
    "notNow": MessageLookupByLibrary.simpleMessage("لاحقًا"),
    "not_logged_in": MessageLookupByLibrary.simpleMessage("انت غير مسجل"),
    "not_supported_device": MessageLookupByLibrary.simpleMessage(
      "الجهاز غير مدعوم",
    ),
    "not_verified": MessageLookupByLibrary.simpleMessage("غير محقق"),
    "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "occupation": MessageLookupByLibrary.simpleMessage("المهنة"),
    "or": MessageLookupByLibrary.simpleMessage("أو"),
    "other": MessageLookupByLibrary.simpleMessage("أخرى"),
    "otp_sent_to": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رمز التحقق إلى: ",
    ),
    "our_projects": MessageLookupByLibrary.simpleMessage("مشاريعنا"),
    "passport_cannot_be_all_zeros": MessageLookupByLibrary.simpleMessage(
      "رقم جواز السفر لا يمكن أن يكون أصفار فقط",
    ),
    "passport_format_invalid": MessageLookupByLibrary.simpleMessage(
      "رقم جواز السفر يجب أن يحتوي على حروف وأرقام فقط",
    ),
    "passport_length_invalid": MessageLookupByLibrary.simpleMessage(
      "رقم جواز السفر يجب أن يكون من 6-20 حرف أو رقم",
    ),
    "passport_number": MessageLookupByLibrary.simpleMessage("رقم جواز السفر"),
    "passport_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال رقم جواز السفر",
    ),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور*"),
    "passwordMatches": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور متطابقة",
    ),
    "passwordNotMatch": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "password_is_required": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور مطلوبة",
    ),
    "password_reset_successful": MessageLookupByLibrary.simpleMessage(
      "تم إعادة تعيين كلمة المرور بنجاح",
    ),
    "pdf_not_supported_on_emulator": MessageLookupByLibrary.simpleMessage(
      "عارض ملفات PDF غير مدعوم على المحاكي",
    ),
    "personal_info": MessageLookupByLibrary.simpleMessage("المعلومات الشخصية"),
    "phd": MessageLookupByLibrary.simpleMessage("دكتوراه"),
    "phone_hint": MessageLookupByLibrary.simpleMessage(""),
    "phone_invalid": MessageLookupByLibrary.simpleMessage(
      "رقم الهاتف يجب أن يكون من 10-15 رقم",
    ),
    "phone_number": MessageLookupByLibrary.simpleMessage("رقم الجوال*"),
    "phone_number_is_required": MessageLookupByLibrary.simpleMessage(
      "رقم الهاتف مطلوب",
    ),
    "phone_required": MessageLookupByLibrary.simpleMessage(
      "برجاء إدخال رقم الهاتف",
    ),
    "pleaseLoginAgain": MessageLookupByLibrary.simpleMessage(
      "يرجى تسجيل الدخول مرة أخرى للمتابعة",
    ),
    "pleaseTryAgain": MessageLookupByLibrary.simpleMessage(
      "يرجى المحاولة مرة أخرى لاحقًا",
    ),
    "please_authenticate": MessageLookupByLibrary.simpleMessage(
      "يرجى التحقق من هويتك للمتابعة",
    ),
    "please_enter_a_valid_phone_number": MessageLookupByLibrary.simpleMessage(
      "يرجى ادخال رقم هاتف صالح",
    ),
    "please_enter_new_strong_pass": MessageLookupByLibrary.simpleMessage(
      "من فضلك أدخل كلمة مرور قوية جديدة",
    ),
    "please_enter_the_new_phone_number_to_reset_your_password":
        MessageLookupByLibrary.simpleMessage(
          "يرجى إدخال رقم الهاتف الجديد لإعادة تعيين كلمة المرور",
        ),
    "please_enter_your_details_and_make_sure_you_are_entering_your_correct_password":
        MessageLookupByLibrary.simpleMessage(
          "يرجى ادخال بياناتك وتأكد من ادخال كلمة المرور الصحيحة",
        ),
    "please_enter_your_phone_number_to_reset_your_password":
        MessageLookupByLibrary.simpleMessage(
          "يرجى إدخال رقم هاتفك لإعادة تعيين كلمة المرور",
        ),
    "please_fill_all_fields": MessageLookupByLibrary.simpleMessage(
      "برجاء تعبئة جميع الحقول",
    ),
    "please_fix_validation_errors": MessageLookupByLibrary.simpleMessage(
      "برجاء تصحيح الأخطاء قبل الحفظ",
    ),
    "please_select_nationality": MessageLookupByLibrary.simpleMessage(
      "برجاء اختيار الجنسية",
    ),
    "privacy_policy": MessageLookupByLibrary.simpleMessage(
      "بالاتصال بحسابك تأكد من انك توافق على",
    ),
    "profile_status": MessageLookupByLibrary.simpleMessage("حالة الملف الشخصي"),
    "profile_updated_successfully": MessageLookupByLibrary.simpleMessage(
      "تم تحديث الملف الشخصي بنجاح",
    ),
    "projects": MessageLookupByLibrary.simpleMessage("المشاريع"),
    "register": MessageLookupByLibrary.simpleMessage("تسجيل حساب"),
    "register_now": MessageLookupByLibrary.simpleMessage("سجل الآن"),
    "register_your_account": MessageLookupByLibrary.simpleMessage("سجل حسابك"),
    "register_your_account_desc": MessageLookupByLibrary.simpleMessage(
      "من فضلك أدخل بياناتك",
    ),
    "reschedule": MessageLookupByLibrary.simpleMessage("إعادة الجدولة"),
    "resend_code": MessageLookupByLibrary.simpleMessage("إعادة إرسال الرمز"),
    "reserve_online": MessageLookupByLibrary.simpleMessage("احجز عبر الإنترنت"),
    "reserved_units": MessageLookupByLibrary.simpleMessage("الوحدات المحجوزة"),
    "reset_code_sent_successfully": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رمز إعادة التعيين بنجاح",
    ),
    "reset_password": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كلمة المرور",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "salesman": MessageLookupByLibrary.simpleMessage("بائع"),
    "saudi": MessageLookupByLibrary.simpleMessage("سعودي"),
    "save_changes": MessageLookupByLibrary.simpleMessage("حفظ التغييرات"),
    "search": MessageLookupByLibrary.simpleMessage("بحث"),
    "search_explore": MessageLookupByLibrary.simpleMessage("ابحث واستكشف"),
    "seaview": MessageLookupByLibrary.simpleMessage("إطلالة بحرية"),
    "security": MessageLookupByLibrary.simpleMessage("الامان"),
    "select_education": MessageLookupByLibrary.simpleMessage(
      "اختر المستوى التعليمي",
    ),
    "select_gender": MessageLookupByLibrary.simpleMessage("اختر النوع"),
    "select_nationality": MessageLookupByLibrary.simpleMessage("اختر الجنسية"),
    "select_occupation": MessageLookupByLibrary.simpleMessage("اختر المهنة"),
    "sign_up": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "similarUnits": MessageLookupByLibrary.simpleMessage("نماذج مماثلة"),
    "size": MessageLookupByLibrary.simpleMessage("المساحة"),
    "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
    "skip_for_now": MessageLookupByLibrary.simpleMessage("تخطي الآن"),
    "smartHome": MessageLookupByLibrary.simpleMessage("منزل ذكي"),
    "snapchat_error": MessageLookupByLibrary.simpleMessage("تعذر فتح سناب شات"),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "something_went_wrong": MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
    "start_your_journey": MessageLookupByLibrary.simpleMessage("ابدأ رحلتك"),
    "success": MessageLookupByLibrary.simpleMessage("تم بنجاح"),
    "teacher": MessageLookupByLibrary.simpleMessage("مدرس"),
    "term_condtion": MessageLookupByLibrary.simpleMessage("الشروط والاحكام"),
    "terrace": MessageLookupByLibrary.simpleMessage("التراس"),
    "tiktok_error": MessageLookupByLibrary.simpleMessage("تعذر فتح تيك توك"),
    "touch_id": MessageLookupByLibrary.simpleMessage("بصمة الإصبع"),
    "twitter_error": MessageLookupByLibrary.simpleMessage("تعذر فتح تويتر"),
    "type": MessageLookupByLibrary.simpleMessage("النوع"),
    "unitFeatures": MessageLookupByLibrary.simpleMessage("مميزات النموذج"),
    "unitPlan": MessageLookupByLibrary.simpleMessage("مخطط النموذج"),
    "unsupported_file_type": MessageLookupByLibrary.simpleMessage(
      "نوع الملف غير مدعوم",
    ),
    "unverified": MessageLookupByLibrary.simpleMessage("غير محقق"),
    "update": MessageLookupByLibrary.simpleMessage("تحديث"),
    "updateRequired": MessageLookupByLibrary.simpleMessage("مطلوب تحديث"),
    "updateRequiredBody": MessageLookupByLibrary.simpleMessage(
      "يتوفر إصدار جديد من التطبيق. يرجى التحديث للمتابعة.",
    ),
    "useBiometric": m7,
    "verified": MessageLookupByLibrary.simpleMessage("تم التحقق"),
    "verify": MessageLookupByLibrary.simpleMessage("تحقق"),
    "verify_message": MessageLookupByLibrary.simpleMessage(
      "لقد أرسلنا رمزًا مكونًا من 4 أرقام إلى هاتفك.",
    ),
    "verify_message_email": MessageLookupByLibrary.simpleMessage(
      "لقد أرسلنا رمزًا مكونًا من 4 أرقام إلى بريدك الالكتروني",
    ),
    "verify_your_identity": MessageLookupByLibrary.simpleMessage(
      "تحقق من هويتك",
    ),
    "version": MessageLookupByLibrary.simpleMessage("الإصدار"),
    "warning": MessageLookupByLibrary.simpleMessage("تحذير"),
    "weak_password": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور ضعيفة جدًا",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("مرحبًا"),
    "welcome_description": MessageLookupByLibrary.simpleMessage(
      " برجاء ادخال البيانات للمتابعة",
    ),
    "welcome_message": MessageLookupByLibrary.simpleMessage(
      "مرحبًا، أحتاج إلى المساعدة",
    ),
    "whatsapp_error": MessageLookupByLibrary.simpleMessage("تعذر فتح واتساب"),
    "yes": MessageLookupByLibrary.simpleMessage("نعم"),
    "your_session_has_been_expired": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية جلستك",
    ),
  };
}
