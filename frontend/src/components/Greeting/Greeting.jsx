import React from 'react'
import '../../styles/reset.css'
import './Greeting.css'
import '../../styles/buttons.css'
export default function Greeting() {
  return (
    <section className='greeting'>
            <div className='greeting__text'>
              <h2>¡Bienvenido a mi portafolio!</h2>
              <p>Explora mis proyectos y habilidades.</p>
              <p>No dudes en contactarme para cualquier consulta.</p>
            </div>
            <section class="button-container greeting__links">
              <button>
                <span class="text"><a href="https://jeferssonvm97.com/Curriculum/2024-08-22_Curriculum.pdf">Curriculum</a></span>
                <span class="line -right"></span>
                <span class="line -top"></span>
                <span class="line -left"></span>
                <span class="line -bottom"></span>
              </button>
            </section>

        <picture className='greeting__img'>
            <img src="https://img-database.jeferssonvm97.com/img_projects/1jeferssonSn.png" alt="Foto Personal" loading="lazy"/>
        </picture>
    </section>
  )
}

