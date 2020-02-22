class Product{
  String _name;
  int _quantity;
  String _path;
  String _price;

  Product(this._name,this._quantity,this._path,this._price);

  String get price => _price;
  set price(String value) {
    _price = value;
  }

  String get path => _path;

  set path(String value) {
    _path = value;
  }

  int get quantity => _quantity;

  set quantity(int value) {
    _quantity = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

}