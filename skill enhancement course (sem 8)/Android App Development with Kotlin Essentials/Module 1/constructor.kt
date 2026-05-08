class Car(var brand: String, var model:String, var year:Int)

fun main() {
   val c1  = Car("Ford", "Mustang", 1968)
   val c2  = Car("Toyota", "Mustang", 1968)
   val c3  = Car("Chevrolet", "Mustang", 1968)
   print(c1.brand)
   print(c2.brand)
   print(c3.brand)
   
}
