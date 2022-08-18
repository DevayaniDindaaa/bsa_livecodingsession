bool rotate(String A){
  List B = [];
  for(int i = A.length-1; i >= 0; i--){
    B.add(A[i]);
  }
          
  String X = B.join();
  
  String Y = '';
  for(int y = 0; y < B.length; y++){
    Y = Y + B[y];
  }
  
  if (A == X.toString()) {
    return true;
  }
  return false;
}

bool subs(String J){
  for(int i = 0; i < J.length; i++){
    if(J[i] != J[J.length-i-1]){
      return false;
    }
  }
  return true;
}

bool recursive(String P){
  if (P.isEmpty || P.length == 1){
      return true;
  } else {
      // pada dart string dapat di perlakukan sebagai array, maka dapat langsung P[0] untuk huruf pertama
      if (P[0] != P[P.length - 1]){
          return false;
      } else {
          return recursive(P.substring(1, P.length-1));
      }
  }
}

void main() {
  print('Cara 1 with for : ${rotate('KATAK')}');
  print('Cara 2 with index : ${subs('KATAK')}');
  print('Cara 3 with recursive : ${recursive('KATAK')}');
}