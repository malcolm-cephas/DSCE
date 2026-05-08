class Car(var brand: String, var year:Int){
    
    init{
        this.brand = brand
        this.year = year
        
        println("Brand = $brand")
        println("Year = $year")
    }
}

fun main() {
   val c1  = Car("Ford", 1968)

   
}
