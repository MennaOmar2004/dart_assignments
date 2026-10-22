class Product {
String name;
int id;
double _price = 0.0;
int _quantity = 0;

Product({required this.name , required this.id});

set price(double price){
  if(price >= 0){
    _price = price;
  }
}

set quantity(int quantity){
  if(quantity >= 0){
    _quantity = quantity;
  }
}


double get getPrice => _price;

int get getQuantity => _quantity;

int ubdateStock(int amount){
  if(amount > 0){
    _quantity += amount;
    return _quantity;
  }
  else if (amount < 0 && amount.abs() <= _quantity){
    _quantity -= amount.abs();
    return _quantity;
  }
  else{
    print("invaled ! the amount > the Quantity");
    return _quantity;
  }


}

double calculateTotalValue(){
  double total = _price * _quantity;
  return total;
}

}