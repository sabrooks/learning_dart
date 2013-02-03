class BankAccount {
  String owner, number;
  num balance;

  BankAccount(this.owner, this.number, this.balance);

  deposit(num amount) => balance += amount;
  withdraw(num amount) => balance -= amount;
}

void main() {
  var ba = new BankAccount("John Gates","075-0623456-72", 1000);
  print("Initial balance:\t\t ${ba.balance} \$");
  ba.deposit(250.55);
  print("Balance after deposit:\t\t ${ba.balance} \$");
  ba.withdraw(100);
  print("Balance after withdrawal:\t ${ba.balance} \$");
}
