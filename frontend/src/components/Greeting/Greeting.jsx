import React from 'react'
import '../../styles/reset.css'
import './Greeting.css'

export default function Greeting() {
  return (
    <section className='Greeting'>
        <div className='Greeting__container'>
            <div className='Greeting__text'>
              <h1>Welcome to my portfolio!</h1>
              <p>Explore my projects and skills.</p>
              <p>Feel free to contact me for any inquiries.</p>
            </div>
            <div className='Greeting__links'>
              <a href=""><span>Curricul pdf</span></a>
            </div>
        </div>
        <picture Greeting__img>
            <img src="https://img-database.jeferssonvm97.com/img_projects/1jeferssonSn.png" alt="Foto Personal" />
        </picture>
    </section>
  )
}
