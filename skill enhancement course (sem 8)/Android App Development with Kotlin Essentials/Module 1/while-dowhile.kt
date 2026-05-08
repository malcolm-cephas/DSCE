fun main() {
    var s = 10
    
    while(s-- != 0){
        println(s)
    }
    
    var names = arrayOf("Praveen", "Gaurav", "Akash", "Sid")
    var index = 0
    
    while(index < names.size){
        println(names[index])
        index++
    }
    
    do{
        s++
        println(s)
    }while(s<10)
}