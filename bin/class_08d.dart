

// Isso é só um uso prático do fat arrow



void main(){

  var animal = Cachorro();
  animal.latir();
}


class Cachorro{
  
  void latir() => print("au au");
  /* Isso é o mesmo que 
  void latir(){
    return print('au au);
  }

  */
}