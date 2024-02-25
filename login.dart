import 'dart:io';
import 'main_menu.dart';

class Login {
  bool isLoggedIn = false;

  MainMenu authenticate() {
    while (!isLoggedIn) {
      print("Welcome to Inventory Management System!!");
      print("==========================================");

      stdout.write("Enter the User Name: ");
      String userName = stdin.readLineSync()!;

      stdout.write("Enter the Password: ");
      String password = stdin.readLineSync()!;

      if (isValidLogin(userName, password)) {
        isLoggedIn = true;
        print("\nLogin Successful. Welcome, $userName!\n");
        return MainMenu(); // Return an instance of MainMenu
      } else {
        print("\nInvalid Username or Password. Please Try again.\n");
      }
    }
    return MainMenu(); // Return an instance of MainMenu
  }

  bool isValidLogin(String username, String password) {
    String validUserName = "Yasir";
    String validPassword = "admin";

    return username == validUserName && password == validPassword;
  }
}
