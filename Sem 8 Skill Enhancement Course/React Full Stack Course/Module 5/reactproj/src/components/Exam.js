import React from "react";

function Exam(props) {


    return (

        <>


            <div className="container" style={{ backgroundColor: "lightblue", borderRadius: "12px", width: "550px", marginTop: "25px", marginBottom: "25px"}}>
                <div classname="jumbotron">
                    <h1 classname="display-4">{props.name}</h1>
                    <p classname="lead">Exam details coming from the child component</p>
                    <hr classname="my-4"></hr>
                    <p> Subjects: {props.subject} </p>
                    <p> Date: {props.date} </p>
                    <p classname="lead">
                        <a classname="btn btn-primary btn-lg" href="#" role="button">Student Id: {props.id}</a>
                    </p>
                </div>


            </div>



        </>



    )


}

export default Exam;