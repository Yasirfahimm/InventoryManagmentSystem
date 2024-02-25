import 'dart:io';
import 'addItem.dart';
import 'removeItem.dart';
import 'updateItem.dart';
import 'view_inventory.dart';

class MainMenu {
  void display() {
    List<String> inventory = [
      "APPLE",
      "BANANA",
      "ORANGE",
      "WATERMELON",
      "TOMATO",
    ];

    String choice;
    do {
      print("\nMain Menu:");
      print("1. View Inventory");
      print("2. Add Item to Inventory");
      print("3. Remove Item from Inventory");
      print("4. Update Item Details");
      print("5. Exit");

      stdout.write("Enter your choice: ");
      choice = stdin.readLineSync()!;

      switch (choice) {
        case '1':
          viewInventory(inventory);
          break;
        case '2':
          addItem(inventory);
          break;
        case '3':
          removeItem(inventory);
          break;
        case '4':
          updateItem(inventory);
          break;
        case '5':
          print("Exiting...");
          break;
        default:
          print("Invalid choice. Please try again.");
          break;
      }
    } while (choice != '5');
  }
}
