// Object-Oriented JavaScript Model - Student Object

const student = {
    name: "Rahul",
    id: 101,
    course: "Computer Science",
    marks: 85,
    attendance: 92,

    // Method to display student details
    displayInfo: function() {
        console.log("Student Name:", this.name);
        console.log("Student ID:", this.id);
        console.log("Course:", this.course);
        console.log("Marks:", this.marks);
        console.log("Attendance:", this.attendance + "%");
    },

    // Method to check pass or fail
    checkResult: function() {
        if (this.marks >= 40) {
            console.log(this.name + " has passed.");
        } else {
            console.log(this.name + " has failed.");
        }
    },

    // Method to update marks
    updateMarks: function(newMarks) {
        this.marks = newMarks;
        console.log("Marks updated to:", this.marks);
    }
};

// Method execution
student.displayInfo();
student.checkResult();
student.updateMarks(90);
student.checkResult();


// The JavaScript object student models a real-world student entity using an object literal. 
// The object contains several properties such as 
// name, id, course, marks, and attendance which represent the student's information.
// It also contains methods that perform actions on the object:
//     - displayInfo() prints all student details.
//     - checkResult() checks whether the student has passed based on marks.
//     - updateMarks() updates the student's marks.

// The keyword this is used to access the properties of the current object. 
// For example, this.name refers to the name property inside the same object.
// This design demonstrates object-oriented programming concepts in JavaScript, 
// including encapsulating data and behavior inside a single object.