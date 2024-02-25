// addItem.dart
import 'dart:io';

void addItem(List<String> inventory) {
  print("\nAdding Item to Inventory");

  stdout.write("Enter item name: ");
  String itemName = stdin.readLineSync()!;

  inventory.add(itemName);

  print("Item '$itemName' added to the inventory.");
}
