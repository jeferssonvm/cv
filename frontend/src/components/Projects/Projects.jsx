import React from 'react'
import './Projects.css';
import Cards from '../Cards/Cards';



export default function Projects() {
  return (
    <section className='projects'>
      <h2 className='projects--title'>Projects</h2>
      <section className='projects--content'>
        <Cards />
      </section>
      
    </section>
  )
}
