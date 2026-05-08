class Person{
    var name: String
    var age: Int
    init{
        println("Init Block")
    }
    
    constructor(_name: String, _age:Int){
        this.name = _name
        this.age = _age
        println("Name = $name")
        println("Age = $age")
    }
}

fun main() {
   val zara = Person("Zara", 20)

   
}
