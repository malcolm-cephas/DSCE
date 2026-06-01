import { useEffect, useState } from "react";


function UseEffectDemo () {

    const [data, setData] = useState();
    const [count, setCount] = useState(0);
    useEffect(() => {
        setTimeout(() => {
            setCount((count) => count+1);
        }, 1000);
    }, [])

    return(
        <h1>this page has rendered {count} times</h1>
        
    )




}

export default UseEffectDemo