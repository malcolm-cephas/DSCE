import logo from './logo.svg';
import './App.css';
import { use, useEffect, useState } from 'react';
import jsonData from './data.json';

function App() {
  const [searchTerm, setSearchTerm] = useState('');
  const [searchResults, setSearchResults] = useState([]); 

  useEffect(()=>{
    setSearchResults(jsonData);
  }, [])

  const handleSearch = (e) => {
    const term = e.target.value;
    setSearchTerm(term);

    const results = jsonData.filter(item =>(
      item.name.toLowerCase().includes(term.toLowerCase()))
    )

    setSearchResults(results);
  }


  return (
    <>
      <div className='container' style={{marginTop: '20px'}}>
        <h1 className='display-5'>Search Customer Name</h1>
        <input
        type="text"
        placeholder='Search by name'
        value={searchTerm}
        onChange={handleSearch}
        >
        </input>

        <ul>
          {searchResults.map(item=>(
            <li key={item.id}><strong>{item.name}</strong></li>
          ))}
        </ul>

      </div>

    </>
  );
}

export default App;
