import React from 'react'
import './Contact.css'
import { FaLinkedin } from "react-icons/fa";

export default function Contact() {
  return (
    <footer className='footer' id='contact'>
      <section >
        <h2 className='footer--title'>Jeferssonvm</h2>
      </section>

      <section className='contact-information'>
        <h3 className='contact-information--title'>Información de contacto</h3>
        <address className='contact-information--address'>
          <p><a href="mailto:prueba@prrueba.com">jeferssonveme.97@gmail.com</a></p>
          <p><a href="tel:+573124984145">+57 3124984145</a></p>
        </address>
      </section>
    <section className='social-media'>
        <h3 className='social-media--title'>Redes Sociales</h3>
        <ul className='social-media--list'>
          <a href="https://www.linkedin.com/in/jeferssonvm97" target="_blank" rel="noopener noreferrer">
            <FaLinkedin className='social-media--icon' />
          </a>

        </ul> 
    </section>
      <section className='copyright'>
        <small>© 2025 Jeferssonvm. Todos los derechos reservados. Desarrollado por Jeferssonvm.</small>
      </section>
      
    </footer>

  )
}
