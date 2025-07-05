import React from 'react'
import Greeting from '../Greeting/Greeting';
import AboutMe from '../AboutMe/AboutMe';
import Skills from '../Skills/Skills';
import Projects from '../Projects/Projects';
import Contact from '../Contact/Contact';
import Jobs from '../Jobs/Jobs';
import './Profile.css';
export default function Profile() {
  return (
    <div className='cv-profile'>
        <Greeting/>
        <AboutMe/>
        <Skills/>
        <Projects/>
        <Jobs/>
        <Contact/>
    </div>
  )
}
