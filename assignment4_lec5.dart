import 'bank_account_class.dart';
import 'product_class.dart';
import 'student_class.dart';

//Task 1 — Functions: Grade Calculator
double calculateTotal(double a , double b , double c){
  double total = a + b + c ;
  return total ;
}
double calculateAverage(double total){
  double average = total / 3;
  return average;
}
String getResult(double average){
  if ( average >= 50 ){
    return "pass";
  }
  else{
    return "fail";
  }
} 

// ==========================================================

// Task2
findTopStudent(List<Student> students){
  int highestGrade =0; 
  String name = "";
  for (var student in students){
    if(student.grade > highestGrade ){
      highestGrade = student.grade;
      name = student.name;
    }
  }
  print("$name is topStudent has highestGrade = $highestGrade");
}

// ==========================================================

//task 4
 findProduct(List<Product> products , int id){
  for(var product in products){
    if(id == product.id){
      return product.name;
    }
  }
  return null;
}

double totalValueOfAllProducts(List<Product>products){
 double totalValue = 0;
  for(var product in products){
    totalValue += (product.getPrice * product.getQuantity);
  }
  return totalValue;
}

// anthor solution 

double totalValueOfAllProducts2(List<Product>products){
 double totalValue = 0;
  for(var product in products){
    totalValue += product.calculateTotalValue();
  }
  return totalValue;
}

//===================================================

void main (){
// Task 1 — Functions: Grade Calculator
double a = 70.5;
double b = 55.0;
double c = 80.5;
double total = calculateTotal(a, b, c);
double average = calculateAverage(total);
print("total = $total");
print("average = $average");
print(getResult(average));

print("====================================================");


// Task 2 
 Student student1 = Student("Hana", 16, 50);
 Student student2 = Student("Ahmed", 15, 85);
 Student student3 = Student("Omar", 15, 45);
List <Student> students =[student1 , student2 , student3];

print("${student1.name} isPassed : ${student1.isPassed(student1.grade)}");
print("${student2.name} isPassed : ${student1.isPassed(student2.grade)}");
print("${student3.name} isPassed : ${student1.isPassed(student3.grade)}");
findTopStudent(students);

print("====================================================");


// Task 3
BankAccount object =BankAccount("Menna");
object.balance=500;
object.showBalance;
object.deposit(250);
object.showBalance;
object.deposit(-250);
object.withdraw(100);
object.showBalance;
object.withdraw(700);
object.showBalance;

print("====================================================");


//task 4
Product item1 = Product(name: "Laptop", id: 1001);
Product item2 = Product(name: "Mouse", id: 1007);
Product item3 = Product(name: "Keyboard", id: 1005);

List<Product> products = [item1,item2,item3];

item1.price=15000;
item2.price=200;
item3.price=500;

item1.quantity=2;
item2.quantity=5;
item3.quantity=3;

print("total value of ${item1.name} = ${item1.calculateTotalValue()}");
print("total value of ${item2.name} = ${item2.calculateTotalValue()}");
print("total value of ${item3.name} = ${item3.calculateTotalValue()}");

// print("total price = ${totalValueOfAllProducts(products)}");
print("total price = ${totalValueOfAllProducts2(products)}");

print("product is : ${findProduct(products, 1001)}");

print("quntity of ${item3.name} after ubdatation = ${item3.ubdateStock(-4)}");


}