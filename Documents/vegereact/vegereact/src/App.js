/* eslint-disable */

import './App.css';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from './routes/Header.js'
import MainPage from './routes/MainPage.js';
import { useState } from 'react';
import { useEffect } from 'react';
import PostList from './components/PostList.js';
import Pagination from './components/Pagination.js';

function App() {

  let [resto, setResto] = useState([]);

  const selectResto=async()=>{
      const result = await axios.get('/resto')
      setResto(result.data)
    }

  useEffect(()=>{
    selectResto();
  },[])

  return (
    <div className="App">
      <Header />

      <PostList resto={resto}/>
      <Pagination/>
      
    </div>
  );
}



export default App;
