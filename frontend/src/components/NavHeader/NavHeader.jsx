import React from 'react'
import './NavHeader.css';
export default function NavHeader() {
  return (
  <nav className='nav-header'>
                    <ul>
                      {/* <li >Home</li> */}
                      <li><a href="#aboutMe">Sobre Mi</a></li>
                      <li><a href="#skills">Skills</a></li>
                      <li><a href="#projects">Projectos</a></li>
                      <li><a href="#contact">Contacto</a></li>
                    </ul>
    </nav>
  )
}
