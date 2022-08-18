void summary(List<List<int>> arr, int y){
  int diagonal1 = 0;
  int diagonal2 = 0;
  
  for (int i = 0; i < y; i++) {
      diagonal1 += arr[i][i];
      diagonal2 += arr[i][(y - i) - 1];
  }
  
  print('Summary Diagonal 1 : $diagonal1');
  print('Summary Diagonal 2 : $diagonal2');
  print('Summary All Diagonal : ${diagonal1 + diagonal2}');
}

void main() {
  List<List<int>> array = [[ 11, 2, 4], [4, 5, 6], [10, 8, 12]];
  
  // 3 adalah jumlah dimensi arraynya 
  summary(array, 3);
}
