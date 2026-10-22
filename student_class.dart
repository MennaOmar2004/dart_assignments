class Student {
  String name ;
  int age ;
  int grade; 

  Student(this.name,this.age,this.grade);

  void displayInfo(){
    print("name : $name");
    print("age : $age");
    print("grade : $grade");
  }

  bool isPassed(int grade){
    if (grade >= 50){
      return true;
    }
    else{
      return false;
    }
  }
}