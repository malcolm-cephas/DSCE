fun add(a:Int, b:Int){
    println(a+b)
}

fun con(a:String, b:Int){
    println(a+" is "+b)
}

fun wi(a:Int, b:Int):Int{
    
    return a+b
}

fun sumTwo(a:Int, b:Int):Unit{
    val x = a+b
    println(x)
}

fun fib(a:Int):Int{
    if(a<=1){
        return a
    }
    return fib(a-1)+fib(a-2)
}

inline fun my(function:()->Unit){
    println("I am inline fun a")
    function()
    println("I am inline fun b")
}

fun main() {
    val a = 6
    val b = 5
    add(1, 3)
    con("John", 24)
    
    println(wi(4, 5))
    sumTwo(a, b)
    
    val y = fib(3)
    
    println(y)
    
    val uc = {str:String -> str.uppercase()}
    println(uc("helloWord"))
    
    my({println("inline func param")})
}