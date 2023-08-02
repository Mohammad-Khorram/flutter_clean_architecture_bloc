import 'package:get/get.dart';

class LangCore extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {
        'en': {
          // general
          'lang': 'en',
          'direction': 'ltr',
          'appName': 'Fake Store',
          'connectionError': 'Unable to connect with the server. Check your internet connection and try again.',
          'generalError': 'The desired operation was associated with an error. Please try again later.',
          'notFoundError': 'The page you are looking for could not be found!',
          'notFoundErrorAction': 'Proceed to Home',
          'serviceUnavailableError': 'The service is temporarily unavailable. Please try again later.',
          'internalServerError': 'Something went wrong. Please try again later.',
          'tooManyRequestError': 'Sorry, there was an error. Please try again some minutes later.',
          'timeoutError': 'The request to the server timed out. Please try again later.',
          'notFoundExceptionError': 'Sorry, the resource you requested was not found. Please contact our support team for assistance.',
          'forbiddenError': 'You are not authorized to access this resource. Please contact our support team for assistance.',
          'badRequestError': 'The request was invalid. Please check the request and try again.',
          'parsingDataError': 'Sorry, there was an error parsing the data. Please try again later.\nIf you continue to see this error, please contact our support team for assistance.',
          'errorAction': 'Try again',

          // home
          'homeBnvHome': 'Home',
          'homeBnvCategory': 'Category',
          'homeBnvUser': 'User',

          // product_details
          'productSortTitle': 'Sort by',
          'productSortAscending': 'Ascending',
          'productSortDescending': 'Descending',

          // product_details
          'productDetailsAddToCart': 'Add to Cart',
          'productDetailsAddToCartMessage': 'The specified product has been successfully added to the cart.',

          // login
          'loginPrompt': 'Login to account',
          'loginTitle': 'Login',
          'loginUsername': 'Username',
          'loginPassword': 'Password',
          'forgetPass': 'Forget password?',
          'loginAction': 'Submit',
          'loginRegisterHint1': 'Don\'t have an account? ',
          'loginRegisterHint2': 'Register',

          // profile
          'profileTitle': 'Profile',
          'profileFullName': 'Full name',
          'profileUserName': 'User name',
          'profileEmail': 'Email',
          'profilePhone': 'Phone',
          'profileSignOut': 'Logout',

          // language
          'languageTitle': 'Language',
          'languageHelpTitle': 'Language',

          // theme
          'themeTitle': 'Theme',
          'themeValueSystem': 'System',
          'themeValueDark': 'Dark',
          'themeValueLight': 'Light',

          // ask
          'askTitle': 'Ask a Question',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'Fake Store FAQ',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'Privacy Policy',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'Terms and Conditions',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'fa': {
          // general
          'lang': 'fa',
          'direction': 'rtl',
          'appName': 'فروشگاه',
          'connectionError': 'اتصال اینترنت خود را بررسی و دوباره تلاش کنید.',
          'generalError': 'عملیات موردنظر با خطا همراه شد! لطفاً بعداً دوباره تلاش کنید.',
          'notFoundError': 'صفحه مورد نظر شما پیدا نشد!',
          'notFoundErrorAction': 'بازگشت به خانه',
          'serviceUnavailableError': 'سرور موقتا در دسترس نیست. لطفاً بعداً دوباره امتحان کنید.',
          'internalServerError': 'مشکلی پیش آمده است. لطفاً بعداً دوباره امتحان کنید.',
          'tooManyRequestError': 'با عرض پوزش، سرور به مشکل خورده است. لطفا چند دقیقه بعد دوباره امتحان کنید.',
          'timeoutError': 'زمان درخواست به سرور به اتمام رسید. لطفاً بعداً دوباره امتحان کنید.',
          'notFoundExceptionError': 'با عرض پوزش، داده\u200cهای درخواستی شما یافت نشد. لطفاً برای کمک با تیم پشتیبانی ما تماس بگیرید.',
          'forbiddenError': 'شما مجاز به دسترسی به این داده\u200cها نیستید. لطفاً برای کمک با تیم پشتیبانی ما تماس بگیرید.',
          'badRequestError': 'درخواست شما نامعتبر است. لطفاً درخواست را بررسی کرده و دوباره امتحان کنید.',
          'parsingDataError': 'با عرض پوزش، در تجزیه داده\u200cها خطایی رخ داده است. لطفاً بعداً دوباره امتحان کنید.\nاگر هم\u200cچنان این خطا را مشاهده می‌کنید، لطفاً برای کمک با تیم پشتیبانی ما تماس بگیرید.',
          'errorAction': 'تلاش مجدد',

          // home
          'homeBnvHome': 'خانه',
          'homeBnvCategory': 'دسته\u200cبندی',
          'homeBnvUser': 'ناحیه کاربری',

          // product_details
          'productSortTitle': 'مرتب\u200cسازی بر اساس',
          'productSortAscending': 'صعودی',
          'productSortDescending': 'نزولی',

          // product_details
          'productDetailsAddToCart': 'افزودن به سبد خرید',
          'productDetailsAddToCartMessage': 'محصول موردنظر با موفقیت به سبد خرید اضافه شد.',

          // login
          'loginPrompt': 'ورود به حساب کاربری',
          'loginTitle': 'ورود',
          'loginUsername': 'نام کاربری',
          'loginPassword': 'رمز عبور',
          'forgetPass': 'رمز عبور خود را فراموش کرده\u200cاید؟',
          'loginAction': 'ورود',
          'loginRegisterHint1': 'حساب کاربری ندارید؟ ',
          'loginRegisterHint2': 'ثبت\u200cنام',

          // profile
          'profileTitle': 'حساب کاربری',
          'profileFullName': 'نام و نام خانوادگی',
          'profileUserName': 'نام کاربری',
          'profileEmail': 'ایمیل',
          'profilePhone': 'شماره تماس',
          'profileSignOut': 'خروج از حساب کاربری',

          // language
          'languageTitle': 'زبان',
          'languageHelpTitle': 'زبان (Language)',

          // theme
          'themeTitle': 'حالت نمایش',
          'themeValueSystem': 'بر اساس سیستم',
          'themeValueDark': 'تیره',
          'themeValueLight': 'روشن',

          // ask
          'askTitle': 'سوال بپرسید',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'سوالات متداول',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'سیاست حریم خصوصی',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'قوانین و مقررات',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'ar': {
          // general
          'lang': 'ar',
          'direction': 'rtl',
          'appName': 'متجر',
          'connectionError': 'تعذر الاتصال بالخادم. تحقق من اتصالك بالإنترنت وحاول مرة أخرى.',
          'generalError': 'العملية المطلوبة ارتبطت بخطأ! الرجاء معاودة المحاولة في وقت لاحق.',
          'notFoundError': 'الصفحة التي تبحث عنها لا يمكن العثور عليها!',
          'notFoundErrorAction': 'انتقل إلى المنزل',
          'serviceUnavailableError': 'الخدمة غير متاحة مؤقتا. الرجاء معاودة المحاولة في وقت لاحق.',
          'internalServerError': 'هناك خطأ ما. الرجاء معاودة المحاولة في وقت لاحق.',
          'tooManyRequestError': 'آسف، كان هناك خطأ. يرجى المحاولة مرة أخرى بعد بضع دقائق.',
          'timeoutError': 'انتهت مهلة الطلب إلى الخادم. الرجاء معاودة المحاولة في وقت لاحق.',
          'notFoundExceptionError': 'آسف، لم يتم العثور على المورد الذي طلبته. يرجى الاتصال بفريق الدعم للحصول على المساعدة.',
          'forbiddenError': 'أنت غير مصرح لك للوصول إلى هذا المورد. يرجى الاتصال بفريق الدعم للحصول على المساعدة.',
          'badRequestError': 'الطلب غير صالح. يرجى التحقق من الطلب وحاول مرة أخرى.',
          'parsingDataError': 'آسف، حدث خطأ في تحليل البيانات. يرجى المحاولة مرة أخرى لاحقًا.\nإذا استمر ظهور هذا الخطأ، فيرجى الاتصال بفريق الدعم للحصول على المساعدة.',
          'errorAction': 'حاول ثانية',

          // home
          'homeBnvHome': 'بيت',
          'homeBnvCategory': 'فئة',
          'homeBnvUser': 'مستخدم',

          // product_details
          'productSortTitle': 'ترتيب حسب',
          'productSortAscending': 'تصاعدي',
          'productSortDescending': 'تنازلي',

          // product_details
          'productDetailsAddToCart': 'أضف إلى السلة',
          'productDetailsAddToCartMessage': 'تمت إضافة المنتج المحدد بنجاح إلى سلة التسوق.',

          // login
          'loginPrompt': 'تسجيل الدخول إلى الحساب',
          'loginTitle': 'تسجيل الدخول',
          'loginUsername': 'اسم المستخدم',
          'loginPassword': 'كلمة المرور',
          'forgetPass': 'نسيت كلمة المرور؟',
          'loginAction': 'يُقدِّم',
          'loginRegisterHint1': 'ليس لديك حساب؟ ',
          'loginRegisterHint2': 'يسجل',

          // profile
          'profileTitle': 'حساب تعريفي',
          'profileFullName': 'الاسم الكامل',
          'profileUserName': 'اسم المستخدم',
          'profileEmail': 'بريد إلكتروني',
          'profilePhone': 'هاتف',
          'profileSignOut': 'تسجيل خروج',

          // language
          'languageTitle': 'لغة',
          'languageHelpTitle': 'لغة (Language)',

          // theme
          'themeTitle': 'سمة',
          'themeValueSystem': 'نظام',
          'themeValueDark': 'مظلم',
          'themeValueLight': 'ضوء',

          // ask
          'askTitle': 'طرح سؤال',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'التعليمات',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'سياسة الخصوصية',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'الأحكام والشروط',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'sp': {
          // general
          'lang': 'sp',
          'direction': 'ltr',
          'appName': 'Almacenar',
          'connectionError': 'No se puede conectar con el servidor. Comprueba tu conexión a Internet e inténtalo de nuevo.',
          'generalError': '¡La operación deseada se asoció con un error! Por favor, inténtelo de nuevo más tarde.',
          'notFoundError': '¡No se pudo encontrar la página que está buscando!',
          'notFoundErrorAction': 'Proceder a Inicio',
          'serviceUnavailableError': 'El servicio no está disponible temporalmente. Por favor, inténtelo de nuevo más tarde.',
          'internalServerError': 'Algo salió mal. Por favor, inténtelo de nuevo más tarde.',
          'tooManyRequestError': 'Lo sentimos, ha habido un error. Vuelva a intentarlo unos minutos más tarde.',
          'timeoutError': 'Se agotó el tiempo de espera de la solicitud al servidor. Por favor, inténtelo de nuevo más tarde.',
          'notFoundExceptionError': 'Lo sentimos, no se encontró el recurso que solicitó. Póngase en contacto con nuestro equipo de soporte para obtener ayuda.',
          'forbiddenError': 'No está autorizado para acceder a este recurso. Póngase en contacto con nuestro equipo de soporte para obtener ayuda.',
          'badRequestError': 'La solicitud no era válida. Verifique la solicitud y vuelva a intentarlo.',
          'parsingDataError': 'Lo sentimos, hubo un error al analizar los datos. Vuelva a intentarlo más tarde.\nSi continúa viendo este error, comuníquese con nuestro equipo de soporte para obtener ayuda.',
          'errorAction': 'TIntentar otra vez',

          // home
          'homeBnvHome': 'Hogar',
          'homeBnvCategory': 'Categoría',
          'homeBnvUser': 'Usuario',

          // product_details
          'productSortTitle': 'Ordenar por',
          'productSortAscending': 'ascendente',
          'productSortDescending': 'Descendente',

          // product_details
          'productDetailsAddToCart': 'añadir a la cesta',
          'productDetailsAddToCartMessage': 'El producto especificado se ha añadido correctamente al carrito.',

          // login
          'loginPrompt': 'Iniciar sesión en la cuenta',
          'loginTitle': 'Acceso',
          'loginUsername': 'Nombre de usuario',
          'loginPassword': 'Contraseña',
          'forgetPass': 'Contraseña olvidada?',
          'loginAction': 'Entregar',
          'loginRegisterHint1': 'No tienes una cuenta? ',
          'loginRegisterHint2': 'Registro',

          // profile
          'profileTitle': 'Perfil',
          'profileFullName': 'Nombre completo',
          'profileUserName': 'Nombre de usuario',
          'profileEmail': 'Correo electrónico',
          'profilePhone': 'Teléfono',
          'profileSignOut': 'Cerrar sesión',

          // language
          'languageTitle': 'Idioma',
          'languageHelpTitle': 'Idioma (Language)',

          // theme
          'themeTitle': 'Tema',
          'themeValueSystem': 'Sistema',
          'themeValueDark': 'Oscuro',
          'themeValueLight': 'Ligero',

          // ask
          'askTitle': 'Hacer una pregunta',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'Preguntas más frecuentes',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'política de privacidad',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'Términos y condiciones',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'fr': {
          // general
          'lang': 'fr',
          'direction': 'ltr',
          'appName': 'Magasin',
          'connectionError': 'Impossible de se connecter au serveur. Vérifiez votre connexion Internet et réessayez.',
          'generalError': 'L\'opération souhaitée a été associée à une erreur! Veuillez réessayer plus tard.',
          'notFoundError': 'La page que vous recherchez est introuvable!',
          'notFoundErrorAction': 'Passer à l\'accueil',
          'serviceUnavailableError': 'Le service est momentanément indisponible. Veuillez réessayer plus tard.',
          'internalServerError': 'Quelque chose s\'est mal passé. Veuillez réessayer plus tard.',
          'tooManyRequestError': 'Désolé, il y a eu une erreur. Veuillez réessayer quelques minutes plus tard.',
          'timeoutError': 'La demande au serveur a expiré. Veuillez réessayer plus tard.',
          'notFoundExceptionError': 'Désolé, la ressource que vous avez demandée est introuvable. Veuillez contacter notre équipe d\'assistance pour obtenir de l\'aide.',
          'forbiddenError': 'Vous n\'êtes pas autorisé à accéder à cette ressource. Veuillez contacter notre équipe d\'assistance pour obtenir de l\'aide.',
          'badRequestError': 'La demande était invalide. Veuillez vérifier la demande et réessayer.',
          'parsingDataError': 'Désolé, une erreur s\'est produite lors de l\'analyse des données. Veuillez réessayer plus tard.\nSi vous continuez à voir cette erreur, veuillez contacter notre équipe d\'assistance pour obtenir de l\'aide.',
          'errorAction': 'Essayer à nouveau',

          // home
          'homeBnvHome': 'Maison',
          'homeBnvCategory': 'Catégorie',
          'homeBnvUser': 'Utilisateur',

          // product_details
          'productSortTitle': 'Trier par',
          'productSortAscending': 'Ascendant',
          'productSortDescending': 'Descendant',

          // product_details
          'productDetailsAddToCart': 'Ajouter au panier',
          'productDetailsAddToCartMessage': 'Le produit spécifié a été ajouté au panier avec succès.',

          // login
          'loginPrompt': 'Connectez-vous au compte',
          'loginTitle': 'Connexion',
          'loginUsername': 'Nom d\'utilisateur',
          'loginPassword': 'Mot de passe',
          'forgetPass': 'Mot de passe oublié?',
          'loginAction': 'Soumettre',
          'loginRegisterHint1': 'Vous n\'avez pas de compte? ',
          'loginRegisterHint2': 'Enregistrer',

          // profile
          'profileTitle': 'Profil',
          'profileFullName': 'Nom et prénom',
          'profileUserName': 'Nom d\'utilisateur',
          'profileEmail': 'E-mail',
          'profilePhone': 'Téléphone',
          'profileSignOut': 'Se déconnecter',

          // language
          'languageTitle': 'Langue',
          'languageHelpTitle': 'Langue (Language)',

          // theme
          'themeTitle': 'Thème',
          'themeValueSystem': 'Système',
          'themeValueDark': 'Sombre',
          'themeValueLight': 'Lumière',

          // ask
          'askTitle': 'Poser une question',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'FAQ',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'politique de confidentialité',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'Termes et conditions',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'chi': {
          // general
          'lang': 'chi',
          'direction': 'ltr',
          'appName': '店铺',
          'connectionError': '无法与服务器连接。 检查您的互联网连接，然后重试。',
          'generalError': '所需的操作与错误相关联！ 请稍后再试。',
          'notFoundError': '找不到您要查找的页面！',
          'notFoundErrorAction': '前往首页',
          'serviceUnavailableError': '该服务暂时不可用。 请稍后再试。',
          'internalServerError': '出了些问题。 请稍后再试。',
          'tooManyRequestError': '对不起，出现了一个错误。 请几分钟后重试。',
          'timeoutError': '对服务器的请求超时。 请稍后再试。',
          'notFoundExceptionError': '抱歉，没有找到您请求的资源。 请联系我们的支持团队寻求帮助。',
          'forbiddenError': '您无权访问此资源。 请联系我们的支持团队寻求帮助。',
          'badRequestError': '该请求无效。 请检查请求并重试。',
          'parsingDataError': '抱歉，解析数据时出错。 请稍后重试。\n如果您仍然看到此错误，请联系我们的支持团队寻求帮助。',
          'errorAction': '再试一次',

          // home
          'homeBnvHome': '家',
          'homeBnvCategory': '类别',
          'homeBnvUser': '用户',

          // product_details
          'productSortTitle': '排序方式',
          'productSortAscending': '上升',
          'productSortDescending': '降序',

          // product_details
          'productDetailsAddToCart': '添加到购物车',
          'productDetailsAddToCartMessage': '指定的产品已成功添加到购物车。',

          // login
          'loginPrompt': '登录帐户',
          'loginTitle': '登录',
          'loginUsername': '用户名',
          'loginPassword': '密码',
          'forgetPass': '忘记密码？',
          'loginAction': '提交',
          'loginRegisterHint1': '没有帐户？ ',
          'loginRegisterHint2': '登记',

          // profile
          'profileTitle': '轮廓',
          'profileFullName': '全名',
          'profileUserName': '用户名',
          'profileEmail': '电子邮件',
          'profilePhone': '电话',
          'profileSignOut': '登出',

          // language
          'languageTitle': '语言',
          'languageHelpTitle': '语言 (Language)',

          // theme
          'themeTitle': '主题',
          'themeValueSystem': '系统',
          'themeValueDark': '黑暗的',
          'themeValueLight': '光',

          // ask
          'askTitle': '问一个问题',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': '常问问题',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': '隐私政策',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': '条款和条件',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        },
        'hin': {
          // general
          'lang': 'hin',
          'direction': 'ltr',
          'appName': 'इकट्ठा करना',
          'connectionError': 'सर्वर से कनेक्ट करने में असमर्थ. अपना इंटरनेट कनेक्शन जांचें और पुनः प्रयास करें।',
          'generalError': 'वांछित ऑपरेशन एक त्रुटि से जुड़ा था! कृपया बाद में पुन: प्रयास करें।',
          'notFoundError': 'आप जिस पृष्ठ की तलाश कर रहे हैं वह नहीं मिल सका!',
          'notFoundErrorAction': 'घर की ओर आगे बढ़ें',
          'serviceUnavailableError': 'अस्थाई रूप से सेवा अनुपलब्ध है। कृपया बाद में पुन: प्रयास करें।',
          'internalServerError': 'कुछ गलत हो गया। कृपया बाद में पुन: प्रयास करें।',
          'tooManyRequestError': 'क्षमा करें, कोई त्रुटि हुई। कृपया कुछ मिनट बाद पुनः प्रयास करें।',
          'timeoutError': 'सर्वर से अनुरोध का समय समाप्त हो गया। कृपया बाद में पुन: प्रयास करें।',
          'notFoundExceptionError': 'क्षमा करें, आपके द्वारा अनुरोधित संसाधन नहीं मिला। सहायता के लिए कृपया हमारी सहायता टीम से संपर्क करें।',
          'forbiddenError': 'आप इस संसाधन तक पहुँचने के लिए अधिकृत नहीं हैं। सहायता के लिए कृपया हमारी सहायता टीम से संपर्क करें।',
          'badRequestError': 'अनुरोध अमान्य था. कृपया अनुरोध की जाँच करें और पुनः प्रयास करें।',
          'parsingDataError': 'क्षमा करें, डेटा पार्स करने में त्रुटि हुई। कृपया बाद में पुनः प्रयास करें।\nयदि आपको यह त्रुटि दिखाई देती रहती है, तो कृपया सहायता के लिए हमारी सहायता टीम से संपर्क करें।',
          'errorAction': 'पुनः प्रयास करें',

          // home
          'homeBnvHome': 'घर',
          'homeBnvCategory': 'वर्ग',
          'homeBnvUser': 'उपयोगकर्ता',

          // product_details
          'productSortTitle': 'इसके अनुसार क्रमबद्ध करें',
          'productSortAscending': 'आरोही',
          'productSortDescending': 'अवरोही',

          // product_details
          'productDetailsAddToCart': 'कार्ट में जोड़ें',
          'productDetailsAddToCartMessage': 'निर्दिष्ट उत्पाद को कार्ट में सफलतापूर्वक जोड़ दिया गया है।',

          // login
          'loginPrompt': 'खाते में लॉगिन करें',
          'loginTitle': '',
          'loginUsername': 'उपयोगकर्ता नाम',
          'loginPassword': '',
          'forgetPass': 'पासवर्ड भूल गए?',
          'loginAction': 'जमा करना',
          'loginRegisterHint1': 'क्या आपके पास खाता नहीं है? ',
          'loginRegisterHint2': 'पंजीकरण करवाना',

          // profile
          'profileTitle': 'प्रोफ़ाइल',
          'profileFullName': 'पूरा नाम',
          'profileUserName': 'उपयोगकर्ता नाम',
          'profileEmail': 'ईमेल',
          'profilePhone': 'फ़ोन',
          'profileSignOut': 'लॉग आउट',

          // language
          'languageTitle': 'भाषा',
          'languageHelpTitle': 'भाषा (Language)',

          // theme
          'themeTitle': 'थीम',
          'themeValueSystem': 'प्रणाली',
          'themeValueDark': 'अँधेरा',
          'themeValueLight': 'रोशनी',

          // ask
          'askTitle': 'प्रश्न पूछें',
          'askDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // faq
          'faqTitle': 'नकली स्टोर अक्सर पूछे जाने वाले प्रश्न',
          'faqDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // privacy
          'privacyTitle': 'Privacy Policy',
          'privacyDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',

          // terms
          'termsTitle': 'नियम और शर्तें',
          'termsDescription': 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        }
      };
}