import { useState } from "react";


function Promote() {

    const [employees, setEmployees] = useState(['Anu', 'Milind', 'Surya', 'Ramesh', 'Kiran']);
    const [staff, setStaff] = useState(
        [
            {
                id: 1,
                name: 'Kiran',
                qualification: 'Engineer',
                picture: 'https://www.rapid7.com/_next/image/?url=https%3A%2F%2Fwww.rapid7.com%2Fcdn%2Fassets%2Fblt7ac8abe6d53c26a9%2F67effbf4f8adbe2b9fdd87bd%2Fcorey-thomas.jpg&w=256&q=75',
                exp: '20 Years enterprise programming and coding',
                desc: 'Kiran is from bangalore, he joined the company in the year 2012'
            },
            {
                id: 1,
                name: 'Kiran',
                qualification: 'Accounting',
                picture: 'https://time.com/redesign/_next/image/?url=https%3A%2F%2Fapi.time.com%2Fwp-content%2Fuploads%2F2018%2F12%2Fc_lang.jpg%3Fquality%3D85%26w%3D1024&w=256&q=75',
                exp: '10 Years SAP accounting',
                desc: 'Kiran is from jaipur, he joined the company in the year 2016'
            },
            {
                id: 1,
                name: 'Kiran',
                qualification: 'HR',
                picture: 'https://headshotgrapher.com/_next/image?url=https%3A%2F%2Fimg.headshotgrapher.com%2Fsam_1.png&w=256&q=75',
                exp: '5 years expericence',
                desc: 'Kiran is from hyderabad, he joined the company in the year 2015'
            },

        ]
    )

    return (
        <>
            <h1>Employee Promotion Module</h1>
            <table>
                <thead>
                    <th> EID </th>
                    <th> Employee Name </th>
                    <th> Promote </th>

                </thead>

                <tbody>
                    {

                        employees.map((emp, index) => (
                            <tr>
                                <td>{index + 1}</td>
                                <td> <strong>{emp}</strong> </td>
                                <td>
                                    <button className="btn btn-success">Promote</button>
                                </td>
                            </tr>

                        )

                        )

                    }

                </tbody>
            </table>
            {
                staff.map((item) => (
                    <div>
                        <div class="card">
                           <img src={item.picture} class="card-img-top" alt="..." />
                                <div class="card-body">
                                    <h5 class="card-title">{item.name}</h5>
                                    <p class="card-text">{item.desc}</p>
                                    <a href="#" class="btn btn-primary">Read More</a>
                                </div>
                        </div>


                    </div>

                ))


            }






        </>

    )
}


export default Promote;