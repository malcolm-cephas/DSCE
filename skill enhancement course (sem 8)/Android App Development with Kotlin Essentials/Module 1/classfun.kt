class Car(var brand: String, var year:Int){

    
    init{
        this.brand = brand
        this.year = year
        
        println("Brand = $brand")
        println("Year = $year")
    }
    
    fun drive(){
        println("VROOOOOOM")
    }
}

fun main() {
   val c1  = Car("Ford", 1968)
   c1.drive()

   
}
