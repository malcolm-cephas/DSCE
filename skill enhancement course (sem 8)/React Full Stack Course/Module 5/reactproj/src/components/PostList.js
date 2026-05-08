import { useEffect, useState } from "react";

function PostList() {
    const url = "https://jsonplaceholder.typicode.com/posts"

    useEffect(() => {
        fetch(url)
            .then((response) => {
                if (!response.ok) {
                    throw new Error('Network issue!!')
                } else {
                    console.log("data fetch successful!")
                }
                return response.json();
            })
            .then((data) => {
                setPosts(data);
            })
            .catch((err) => {
                console.log("oops there is some issue")
            })
    }, []) // runs only once

    let [posts, setPosts] = useState([]);

    function handleDelete(delItem){
        //alert('do you really want to delete the post?')
        posts = [...posts.filter((delId)=> delId.id !== delItem)]
        setPosts(posts);
    }

    return (
        <>
            <div className="container">
                <h1 className="display-1">Posts</h1>
                <table>
                    <thead>

                        <th>ID</th>
                        <th>Title</th>
                        <th>Body</th>
                        <th>Actions</th>

                    </thead>
                    <tbody>
                        {posts.map((post) => (
                            <tr key={post.id}>
                                <td>{post.id}</td>
                                <td>{post.title}</td>
                                <td>{post.body}</td>
                                <td><button className="btn btn-danger" onClick={()=>handleDelete(post.id)}>delete</button>
                                </td>
                            </tr>
                        )
                        )}

                    </tbody>


                </table>

            </div>


        </>
    )
}

export default PostList;