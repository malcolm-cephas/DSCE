import React, { useState } from "react";

import {useForm} from 'react-hook-form';

function LoginForm(){

        const {register, handleSubmit, formState: {errors}} = useForm();
        const onSubmit = (data) =>{
            console.log(data);
            setUserEmail(data.email)
            setUsername(data.username)
        }

        const [user, setUserEmail]  = useState('');
        const [username, setUsername]  = useState('');

return(
<>
<h1 className="display-1">Login</h1>

<form style={{marginTop:'100px', marginLeft:'100px'}}
onSubmit={handleSubmit(onSubmit)}>
    <label>Enter username</label>
    <input type="text"
    style={{marginLeft:'10px'}}
    {...register('username', {required: true})}
    />
    {errors.username && <p className="text-danger">username cannot be empty</p>}
    <br></br>
    <label>Enter EMail-ID</label>
    <input type="email"
    style={{marginLeft:'10px'}}
    {...register('email', {required: true, pattern: /^\S+@\S+$/i})}
    />
    {errors.email && <p className="text-danger">Email must be a valid email</p>}
    <br></br>
    <label>Enter Password</label>
    <input type="password"
    style={{marginLeft:'10px'}} 
    {...register('password', {required: true, minLength:8})}
    />
    {errors.password && <p className="text-danger">Password is required or is less than 8 characters</p>}
    <br></br>
    <button type="submit" style={{marginLeft:'200px'}} className="btn btn-success">Submit</button>
</form>

<h1 className="display-4"> Welcome {username}</h1>
<h1 className="display-4"> your email id is: {user}</h1>


</>
)
}

export default LoginForm;