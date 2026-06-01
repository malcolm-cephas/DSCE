open class Base{
    open var name:String = "Base"
    init{
       
    }
    
    open fun displayName(){
        println("I am in " + this.name)
    }
}

open class Child: Base(){
    init{
        name = "Child"
    }
    
    override fun displayName(){
        super.displayName()
        println("I am in " + super.name)
    }
}

class Grandchild: Child(){
    init{
        name = "Grandchild"
    }
}

fun main(){
    var g = Child()
    g.displayName()
}