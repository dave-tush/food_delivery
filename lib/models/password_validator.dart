double passwordStrength = 0;
RegExp passwordValid =
RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
bool validatePassword(String pass) {
  String _password = pass.trim();
  if (_password.isEmpty) {
    passwordStrength = 0;
  } else if (_password.length < 6) {
    passwordStrength = 1 / 4;
  } else if (_password.length < 8) {
    passwordStrength = 2 / 4;
  } else {
    if (passwordValid.hasMatch(_password)) {
      passwordStrength = 4 / 4;
      return true;
    } else {
      passwordStrength = 3 / 4;
      return false;
    }
  }
  return false;
}