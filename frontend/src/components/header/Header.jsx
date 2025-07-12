import React, { useState, useEffect } from 'react';
import NavHeader from '../NavHeader/NavHeader';
import { IoMenuSharp, IoClose } from "react-icons/io5";
import './Header.css';

export default function Header() {
  const [isOpen, setIsOpen] = useState(false);
  const [screenSize, setScreenSize] = useState(window.innerWidth);

  // Escuchar el redimensionamiento de la pantalla
  useEffect(() => {
    const handleResize = () => setScreenSize(window.innerWidth);
    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  // Si es pantalla pequeña
  if (screenSize < 598) {
    return (
      <header className={`header ${isOpen ? 'header--open' : ''}`}>
        {!isOpen ? (
          <>
            <picture className='personal_logo'>
              <img
                src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png"
                alt="Logo"
              />
            </picture>
            <picture className='container-logo'>
              <IoMenuSharp className='icon__menu icon__menu--open' onClick={() => setIsOpen(true)} />
            </picture>
          </>
        ) : (
          <div className='menu'>
            <picture className='container-logo'>
              <IoClose className='icon__menu icon__menu--close' onClick={() => setIsOpen(false)} />
            </picture>
            <NavHeader />
          </div>
        )}
      </header>
    );
  }

  // Si es pantalla grande
  return (
    <header className='header'>
      <picture className='container-logo'>
        <img
          className='logo'
          src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png"
          alt="Logo"
        />
      </picture>
      <NavHeader />
    </header>
  );
}


    // <header className='header'>
    //   <picture className='container-logo'>
    //     <img className='logo' src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png" alt="Logo"  />
    //   </picture>
    //   <NavHeader></NavHeader>
    // </header>