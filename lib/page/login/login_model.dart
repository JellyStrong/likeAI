class Model {
  bool _showMenu = false;

  bool get showMenu => _showMenu;

  bool showMemuChlick() {
    return _showMenu = !_showMenu;
  }
}
