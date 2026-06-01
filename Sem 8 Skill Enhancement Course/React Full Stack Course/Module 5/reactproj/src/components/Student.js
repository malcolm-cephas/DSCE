import React, { useRef, useState } from "react";
import Exam from "./Exam";

function Student() {

    const [students, setStudents] = useState([
        {
            id: 1,
            name: 'Kiran',
            subject: 'Science',
            date: 'Jan 23'
        },
        {
            id: 2,
            name: 'Surya',
            subject: 'Python',
            date: 'Jan 22'
        },
        {
            id: 3,
            name: 'Chandrakant',
            subject: 'Maths',
            date: 'Jan 21'
        },
        {
            id: 4,
            name: 'Rekha',
            subject: 'English',
            date: 'Jan 24'
        }
    ])

    const refName = useRef("");
    console.log(refName)
    const [name, setName] = useState("")

    function cleartext() {
        setName("");
        refName.current.focus();
    }

    function changetext() {
        refName.current.style.color = "red";
        refName.current.disabled = true;
    }

    function enabletext() {
        refName.current.style.color = "black";
        refName.current.disabled = false;
    }

    return (

        <>
            <div className="container">

                <label>Enter your name</label>
                <input type="text" ref={refName} value={name}
                    onChange={(e) => (setName(e.target.value))}
                ></input>
                <br></br>
                <br></br>
                <label>Enter your Phone</label>
                <input type="text"></input>
                <br></br>
                <button className="btn btn-primary"
                    style={{ marginLeft: '250px', marginTop: '12px' }}
                    onClick={cleartext}
                >Clear</button>
                <button className="btn btn-primary"
                    style={{ marginLeft: '50px', marginTop: '12px' }}
                    onClick={changetext}
                >Change Text</button>
                <button className="btn btn-primary"
                    style={{ marginLeft: '50px', marginTop: '12px' }}
                    onClick={enabletext}
                >Enable Text</button>
            </div>

            {/* {
                students.map((stud) => (
                    <Exam id={stud.id} name={stud.name} subject={stud.subject} date={stud.date} />

                ))
            } */}





        </>



    )


}

export default Student;