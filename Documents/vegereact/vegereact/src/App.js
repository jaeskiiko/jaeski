/* eslint-disable */

import './App.css';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import Header from './routes/Header.js'
import { useState, useEffect } from 'react';
import { Routes, Route, Link, useNavigate } from 'react-router-dom';
import PostList from './routes/PostList.js';
import Test from './routes/Test.js'

function App() {

  let [resto, setResto] = useState([]); // db에서 받아온 db data 넣어놓은 state

  const selectResto=async()=>{
      const result = await axios.get('/resto')
      setResto(result.data)
    }

  useEffect(()=>{
    selectResto();
    // console.log(resto[0].deposit)
  },[])

  return (
    <div className="App">
      <Header />
    
      {/* <PostList resto={resto}/> */}
      <Routes>
        <Route path="/" element={<PostList resto={resto}/>}/>
        <Route path="/detail/:id" element={<Test resto={resto}/>}/>
      </Routes>
    </div>
  );
}

export default App;
