fun main() {
    var s = 10
	@loop while(s-- != 0){
        println(s)
        
        if(s == 5){
            break
        } else if( s == 6){
            continue@loop
        }
    }
}