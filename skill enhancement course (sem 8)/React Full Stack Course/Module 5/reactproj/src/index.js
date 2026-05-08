import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import Promote from './components/Promote';
import App from './App';
import reportWebVitals from './reportWebVitals';
import UseEffectDemo from './components/UseEffectDemo';
import PostList from './components/PostList';
import Student from './components/Student';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
     <App />
    {/* <Promote/> */}
    {/* <UseEffectDemo/> */}
    {/* <PostList/> */}
    {/* <Student></Student> */}
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
