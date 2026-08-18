class ValidPalindrome {
  bool isPalindrome(String s) {
    int d = 0;
    int e = s.length-1;

    while(d < e){
      if(s[d].contains(RegExp(r'[^a-zA-Z0-9]')) ){
        d++;
        continue;
      }
      if(s[e].contains(RegExp(r'[^a-zA-Z0-9]')) ){
        e--;
        continue;
      }
      
      if(s[d].toLowerCase() != s[e].toLowerCase()){
        return false;
      }

      d++;
      e--;
    }
    return true;
  }
}