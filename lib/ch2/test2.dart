String myFun({String data = 'hello'}){
  return data;
}

main(){
  print('myFun() result : ${myFun()}');
  print('myFun() result : ${myFun(data : 'world')}');
}