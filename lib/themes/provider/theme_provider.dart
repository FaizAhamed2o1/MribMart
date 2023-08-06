import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';



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
