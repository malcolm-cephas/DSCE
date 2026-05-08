open class Base{
    init{
        println("I am in base class")
    }
}

open class Child: Base(){
    init{
        println("I am in Child class")
    }
}

class Grandchild: Child(){
    init{
        println("I am in Frandchild class")
    }
}

fun main(){
    var g = Grandchild()
}