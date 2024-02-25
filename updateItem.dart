//updateItem.dart
import 'dart:io';

void updateItem(List<String> inventory) {
  print("\nUpdating Item Details");

  if (inventory.isEmpty) {
    print("Inventory is empty. No items to update.");
    return;
  }

  stdout.write("Enter the name of the item to update: ");
  String itemName = stdin.readLineSync()!;

  if (inventory.contains(itemName)) {
    stdout.write("Enter the new name for '$itemName': ");
    String newItemName = stdin.readLineSync()!;

    int itemIndex = inventory.indexOf(itemName);
    inventory[itemIndex] = newItemName;

    print(
        "Item details updated successfully. '$itemName' has been renamed to '$newItemName'.");
  } else {
    print("Item '$itemName' not found in the inventory.");
  }
}
