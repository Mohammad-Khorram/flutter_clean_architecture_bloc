import 'package:bloc/bloc.dart';

class LanguageCubit extends Cubit<String> {
  LanguageCubit() : super('en');

  void changeLanguage(String lang) => emit(lang);

  String getLanguage() {
    switch (state) {
      case 'en':
        return 'English';

      case 'ar':
        return 'العربیة';

      case 'fa':
        return 'فارسی';

      case 'sp':
        return 'Español';

      case 'fr':
        return 'Français';

      case 'chi':
        return '汉语';

      case 'hin':
        return 'हिन्दी';

      default:
        return '';
    }
  }
}
