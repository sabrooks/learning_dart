main() {
  var ba = new BankAccount("John Gates","075-0623456-72", 1000.0);
  print('$ba');
  // without toString(): Instance of 'BankAccount'
  // with toString(): Bank account from John Gates with number 075-0623456-72 and balance 1000.0
  print('Bank account created at: ${ba.dateCreated}');
  ba.withdraw(100.0);
  print("Balance after withdrawal:\t ${ba.balance} \$");
  print('Account balance modified at: ${ba.dateModified}');
  print('${ba.dateModified.weekday}');
}

class BankAccount {
  String owner, number;
  double balance;
  DateTime dateCreated, dateModified;
  // constructor:
  BankAccount(this.owner, this.number, this.balance)  {
    dateCreated = new DateTime.now();
  }
  // methods:
    deposit(double amount) {
    balance += amount;
    dateModified = new DateTime.now();
  }

  withdraw(double amount) {
    balance -= amount;
    dateModified = new DateTime.now();
  }

  String toString() {
    return 'Bank account from $owner with number $number'
               ' and balance $balance';
  }
}
