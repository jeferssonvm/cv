import { useState } from 'react'
import Header from './components/header/Header.jsx'
import Home from './components/home/Home.jsx'
import Profile from './components/Profile/Profile.jsx';
import { useRoutes, BrowserRouter,Routes,Route } from 'react-router-dom';
// import './App.css'
import './styles/reset.css'

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <BrowserRouter>
        <Header></Header>
        <Routes>
          <Route path="/" element={<Profile></Profile>}></Route>
          <Route path="/about" element={<h1>About Page</h1>} />
          <Route path="/contact" element={<h1>Contact Page</h1>} />
          <Route path="*" element={<home></home>}></Route>
        </Routes>
        
      </BrowserRouter>
    </>
  )
}

export default App
