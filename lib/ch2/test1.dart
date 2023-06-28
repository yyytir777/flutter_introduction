class User{
  late String name;
  late int age;

  User(String name, int age){
    this.name = name;
    this.age = age;
  }

}

void main(){
  var list = [10, 20, 30];
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
}