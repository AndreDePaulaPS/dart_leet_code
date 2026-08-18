/*
Dada uma lista de números, retorne true se algum número aparecer pelo menos duas vezes.
Caso todos apareçam apenas uma vez, retorne false.

[1, 2, 3, 1] → true

[1, 2, 3, 4] → false

[1, 1, 1, 3, 3, 4, 3, 2, 4, 2] → true
*/


class ContainsDuplicate{
  bool check(List<int> lista){
    var duplicado = [];

    for (var i = 0; i < lista.length; i++){
      if(duplicado.contains(lista[i])){
        return true;
      }
      duplicado.add(lista[i]);
    }
    return false;

  }
}



