void main() {
  Car c1 = new Car('E1004');
  //Car c2 = new Car();
  // Named constructor to enable a class define multiple constructor
  /**
   * Syntax: Defining the constructor
   * Class_name.constructor_name(param_list)
   */
  new Car.namedConst('E1003');
}
class Car {
//  Car() {
//    print("Non-paramterized constructor invoked");
//  }
  String engine = '';
  Car(engine) {
    // The this keyword: refers to the current instance of the class
    this.engine = engine;
    print("The engine is: ${this.engine}");
  }
  Car.namedConst(String engine) {
    print("The engine is: ${engine}");
  }
}