fun main() {
    var s = "Hello World"
    
    for(a in s) print("$a ")
    
    println()
    
    for(i in s.indices) print(s[i] + " ")
    
    println()
    
    for((index, value) in s.withIndex())
    println("Element at $index is $value")

}