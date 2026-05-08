typealias User = Triple<String, String, Int>

fun main() {
   val obj  = userInfo()
   print(obj)
}

fun userInfo():User{
    return Triple("ZARA", "ALI", 21)
}