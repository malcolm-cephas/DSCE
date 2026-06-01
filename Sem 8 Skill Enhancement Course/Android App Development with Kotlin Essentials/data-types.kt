fun main() {
    val byte:Byte = 100
    println(byte)
    
    val int:Int = 100000000
    println(int)

    val short:Short = 5000
    println(short)
    
    val float:Float = 5000.75F
    println(float)
    
    val long:Long = 87439740374874L
    println(long)
    
    val double:Double = 87E15
    println(double)
    
    val char:Char = 'B'
    println(char)
    
    val bool:Boolean = false
    println(bool)
    
    val string:String = "hello"
    println(string)
    
    val escapeString = "hello \tkotlin \n"
    println(escapeString)
    
    val rowString = """
    hi
    i
    am
    good
    """
    println(rowString)
    
    val id = arrayOf(1, 2, 3, 4, 5)
    println(id[id.size-1])
    
    val asc = Array(5, {i->i*2})
    print(asc)

}