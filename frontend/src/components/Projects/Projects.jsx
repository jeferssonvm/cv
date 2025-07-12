import React from 'react'
import './Projects.css';
import Cards from '../Cards/Cards';



export default function Projects() {
  return (
    <section className='projects'id='projects'>
      <h2 className='projects--title'>Proyectos</h2>
      <section className='projects--content'>
        <Cards />
      </section>
      
    </section>
  )
}
