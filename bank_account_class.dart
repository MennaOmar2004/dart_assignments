class BankAccount{
  String accountHolder;
  double _balance = 0.0;

  BankAccount(this.accountHolder);

  get showBalance => print("balance = $_balance") ;

  set balance (double balance){
    if(balance >= 0){
      _balance = balance;
      print("succssfuly");
    }
    else{
      print("invaled balance");
    }
  }

  void deposit (double amount ){
    if(amount > 0){
      _balance += amount;
      print("succssfuly deposite");
    }
     else{
      print("invaled amount");
    }
  }

   void withdraw (double amount ){
    if(amount > 0 && amount <=_balance){
      _balance -= amount;
      print("succssfuly withdrow");
    }
     else{
      print("invaled withdrow");
    }
  }
}