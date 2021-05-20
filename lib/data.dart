class Menu {
  String pilihMenu,
         price,
         image,
         description;

         Menu(this.pilihMenu, this.price, this.image, this.description);
}

final List<Menu> menus = [
  Menu('Big Burger Combo 1', 'Rp. 16.500', 'assets/Rectangle4.png', 'nothing'),
  Menu('Beef cheese burger', 'Rp. 16.500', 'assets/Rectangle5.png', 'Cheese burger with big size'),
  Menu('Iced Cappucino', 'Rp. 6.500', 'assets/Rectangle6.png', 'nothing')
];