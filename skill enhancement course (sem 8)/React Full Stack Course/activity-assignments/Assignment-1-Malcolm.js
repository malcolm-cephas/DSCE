const readline = require("readline")

const r1 = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

r1.question("Enter your marks: ", (marks) => {
    marks = parseInt(marks)

    if(marks>=40){
        console.log("Pass")
    } else {
        console.log("Fail")
    }

    r1.close()
})