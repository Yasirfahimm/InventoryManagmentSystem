import 'dart:io';

void removeItem(List<String> inventory) {
  print("\nRemoving Item from Inventory");

  if (inventory.isEmpty) {
    print("Inventory is empty. No items to remove.");
    return;
  }

  stdout.write("Enter the name of the item to remove: ");
  String itemName = stdin.readLineSync()!;

  if (inventory.contains(itemName)) {
    inventory.remove(itemName);
    print("Item '$itemName' has been removed from the inventory.");
  } else {
    print("Item '$itemName' not found in the inventory.");
  }
}
