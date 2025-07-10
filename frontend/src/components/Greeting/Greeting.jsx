import React from 'react'
import '../../styles/reset.css'
import './Greeting.css'
import '../../styles/buttons.css'
export default function Greeting() {
  return (
    <section className='greeting'>
            <div className='greeting__text'>
              <h2>Welcome to my portfolio!</h2>
              <p>Explore my projects and skills.</p>
              <p>Feel free to contact me for any inquiries.</p>
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

