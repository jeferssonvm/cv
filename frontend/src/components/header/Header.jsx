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
                      <picture className='icon'>
                        <IoMenuSharp  style={{ color: "red" }}  onClick={() => setIsOpen(true)} />
                      </picture>
                    </>
          }else {
            navInfo=<div className='menu'>
                      <picture className='icon'>
                        <IoClose  onClick={() => setIsOpen(false)}/>
                      </picture>
                      <NavHeader/>
                    </div>
          }
  return (
    <header className={`header ${isOpen ? 'header--open' : ''}`}>
        {navInfo}
    </header>
  )
}
