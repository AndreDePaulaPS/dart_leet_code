class ValidAnagram{

  bool isAnagram(String s, String t){
    final originalLetras = <String,int>{};

    if(s.length != t.length) return false;

    for (var i = 0; i < s.length; i++){
      final letra = s[i];
      if(originalLetras.containsKey(letra)){
          originalLetras[letra] = originalLetras[letra]! + 1;
        }else{
          originalLetras[letra] = 1;
        }
    }

    for (var i = 0; i < t.length; i++){
      final letra = t[i];
      if(originalLetras.containsKey(letra)){
        originalLetras[letra] = originalLetras[letra]! - 1;
      }else {
        return false;
      }

    }

    return originalLetras.values.every((e){
      return e == 0;
    });
  }
}