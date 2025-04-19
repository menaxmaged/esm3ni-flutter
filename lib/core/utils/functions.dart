import 'helper.dart';

login(username, password) {
  print("Login function called");

  if (!username.isEmpty && !password.isEmpty) {
    print("Username and password are not empty");
    if (username == default_username && password == default_password) {
      print("Login successful");
      // Save login state
      CacheHelper.saveData(key: isLoggedInkey, value: true);
      return true;
    } else {
      print("Invalid username or password");
      return false;
    }
  } else {
    print("Username or password is empty");
    return false;
  }
}
