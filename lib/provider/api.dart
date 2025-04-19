import 'package:esm3ni/data/constants.dart';

bool login(username, password) {
  print("Login function called");

  if (!username.isEmpty && !password.isEmpty) {
    print("Username and password are not empty");
    if (username == default_username && password == default_password) {
      print("Login successful");
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
