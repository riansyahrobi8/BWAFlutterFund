enum MyColor { appBarColor, delButtonColor, addButtonColor, black, white, body }

extension SelectedColor on MyColor {
  int get color {
    switch (this) {
      case MyColor.appBarColor:
        return 0xFFFE7F49;
      case MyColor.delButtonColor:
        return 0xFFFF7D7D;
      case MyColor.addButtonColor:
        return 0xFF74F45F;
      case MyColor.white:
        return 0xFFFFFFFF;
      case MyColor.body:
        return 0xFFFAFAFA;
      default:
        return 0xFF000000;
    }
  }
}
