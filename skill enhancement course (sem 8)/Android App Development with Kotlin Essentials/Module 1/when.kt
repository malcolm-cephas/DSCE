fun main() {
    var name = "Moon"
    
    when(name){
        "Sun" -> println("HIIIII")
        "Moon" -> println("BYEEE")
        else -> println("idk you")
    }
    
    val number = 5
    
    when(number){
        in 1..3 -> println("im here")
        else -> println("not here")
    }


}