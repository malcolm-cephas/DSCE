open class ABC{
    open val count: Int = 0
    open fun think(){
        println("I am thinking")
    }
}

class BCD(override val count: Int = 400): ABC(){
   override fun think(){
        println("i am also thinking from child brain")
    }
}

fun main(){
    var b = ABC()
    b.think()
    var a = BCD(200)
    a.think()
    println(a.count)
}