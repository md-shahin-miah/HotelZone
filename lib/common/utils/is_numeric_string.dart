bool isNumeric(String string){
  if (string == null) {
    return false;
  }
  return double.tryParse(string) != null;
}