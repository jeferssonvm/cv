import React from 'react'
import './Contact.css'
export default function Contact() {
  return (
    <footer className='footer'>
      <section >
        <h2 className='footer--title'>Jeferssonvm</h2>
      </section>

      <section className='contact-information'>
        <h3 className='contact-information--title'>Información de contacto</h3>
        <address className='contact-information--address'>
          <p><a href="mailto:prueba@prrueba.com">prueba@prrueba.com</a></p>
          <p><a href="tel:+573124984145">+57 3124984145</a></p>
        </address>
      </section>

      <section className='copyright'>
        <small>© 2025 Jeferssonvm. Todos los derechos reservados. Desarrollado por Jeferssonvm.</small>
      </section>
    </footer>

  )
}
