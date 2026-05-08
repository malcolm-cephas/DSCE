open class ABC{
    fun think(){
        println("I am thinking")
    }
}

class BCD: ABC(){}

fun main(){
    var a = BCD()
    a.think()
}