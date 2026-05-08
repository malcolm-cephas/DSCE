import React from "react"
import { Routes, Route, Link, Navigate } from "react-router-dom"
import About from "./About"
import Products from "./Products"
import Contact from "./Contact"
function Shopping() {

    return (

        <>


            <header>
                <div className="container">
                    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <Link to='/about' class="nav-link active" aria-current="page" href="#" style={{color:"wheat"}} >About</Link>
                                    </li>
                                    <li class="nav-item">
                                        <Link to='/products' class="nav-link active" aria-current="page" href="#" style={{color:"wheat"}}>Products</Link>
                                    </li>
                                    <li class="nav-item">
                                        <Link to='/contact' class="nav-link active" aria-current="page" href="#" style={{color:"wheat"}}>Conatact</Link>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>

                </div>



            </header>

            <Routes>
                <Route path="/about" element={<About />}></Route>
                <Route path="/products" element={<Products />}></Route>
                <Route path="/contact" element={<Contact />}></Route>
            </Routes>

        </>

    )

}



export default Shopping