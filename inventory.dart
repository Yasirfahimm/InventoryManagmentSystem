class Inventory {
  static List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
  ];

  static void addItem(String item) {
    items.add(item);
  }

  static void removeItem(String item) {
    items.remove(item);
  }

  static void updateItem(String oldItem, String newItem) {
    int index = items.indexOf(oldItem);
    if (index != -1) {
      items[index] = newItem;
    }
  }

  static void viewInventory() {
    print("\nCurrent Inventory:");
    for (var item in items) {
      print("- $item");
    }
  }
}
