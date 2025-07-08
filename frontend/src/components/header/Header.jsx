import React, {useState} from 'react'
import NavHeader from '../NavHeader/NavHeader';
import { IoMenuSharp, IoClose } from "react-icons/io5";
import './Header.css';


export default function header() {
  const [isOpen, setIsOpen] = useState(false);
  // const []
  let navInfo;
  if (!isOpen) {
            navInfo=<>
                      <picture>
                          <img src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png" alt="Logo" style={{ width: '50px' }} />
                      </picture>
                      <picture className='container-logo'>
                        <IoMenuSharp className='icon__menu icon__menu--open'  onClick={() => setIsOpen(true)} />
                      </picture>
                    </>
          }else {
            navInfo=<div className='menu'>
                      <picture className='container-logo'>
                        <IoClose className='icon__menu icon__menu--close'  onClick={() => setIsOpen(false)}/>
                      </picture>
                      <NavHeader/>
                    </div>
          }
  return (
    <header className={`header ${isOpen ? 'header--open' : ''}`}>
        {navInfo}
    </header>
    // <header className='header'>
    //   <picture className='container-logo'>
    //     <img className='logo' src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png" alt="Logo"  />
    //   </picture>
    //   <NavHeader></NavHeader>
    // </header>
  )
}
