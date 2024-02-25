import 'login.dart';
import 'main_menu.dart';

void main() {
  Login login = Login();
  MainMenu menu = login.authenticate();

  menu.display();
}
