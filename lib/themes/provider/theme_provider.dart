import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class DarkModeNotifier extends StateNotifier<bool> {
//   late SharedPreferences prefs;

//   Future _init() async {
//     prefs = await SharedPreferences.getInstance();
//     var darkMode = prefs.getBool("darkMode");
//     state = darkMode ?? false;
//   }

//   DarkModeNotifier() : super(false) {
//     _init();
//   }

//   void toggle() async {
//     state = !state;
//     prefs.setBool("darkMode", state);
//   }
// }

// final darkModeProvider = StateNotifierProvider<DarkModeNotifier, bool>(
//   (ref) => DarkModeNotifier(),
// );

final darkProvider = AsyncNotifierProvider<DarkModeNewNotifier, bool>(
  () => DarkModeNewNotifier(),
);

class DarkModeNewNotifier extends AsyncNotifier<bool> {
  Future<bool> getMode() {
    final pref = SharedPreferences.getInstance();
    return pref.then((value) {
      return value.getBool("darkMode") ?? false;
    });
  }

  @override
  Future<bool> build() {
    return getMode();
  }

  void toggle() async {
    bool prevValue = state.value ?? false;
    state = AsyncValue.data(!prevValue);
    final pref = await SharedPreferences.getInstance();
    pref.setBool("darkMode", !prevValue);
  }
}
