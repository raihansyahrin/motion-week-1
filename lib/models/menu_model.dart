class MenuModel {
  String photo;
  String name;
  String price;
  String category;
  bool favorite;

  MenuModel(
      {required this.photo,
      required this.name,
      required this.price,
      required this.category,
      required this.favorite});

  static List<MenuModel> getMenu() {
    List<MenuModel> menu = [];

    menu.add(
      MenuModel(
          photo: 'assets/images/chocolate-image.png',
          name: 'Chocolate Frappuccino',
          price: '\$20.00',
          category: "Coffe",
          favorite: true),
    );

    menu.add(
      MenuModel(
          photo: 'assets/images/tea-frappucino-image.png',
          name: 'Tea Frappuccino',
          price: '\$30.00',
          category: "Tea",
          favorite: false),
    );

    menu.add(
      MenuModel(
          photo: 'assets/images/redvelvet-image.png',
          name: 'Red Velvet',
          price: '\$30.00',
          category: "Drink",
          favorite: false),
    );

    return menu;
  }
}
