import React from 'react'
import { FaPython } from "react-icons/fa";
import { BsFiletypeSql } from "react-icons/bs";
import { FaJsSquare } from "react-icons/fa";
import { FaGithub } from "react-icons/fa";
import { RiFileExcel2Line } from "react-icons/ri";
import { FaReact } from "react-icons/fa";
import { SiPandas } from "react-icons/si";

import './Skills.css';


export default function Skills() {
  return (
    <section className='skills'>
      <h2>Skill</h2>
      <div className='skills--icon'>
        <FaPython />
        <BsFiletypeSql />
        <FaJsSquare />
        <FaGithub />
        <FaReact />
        <RiFileExcel2Line />
        <SiPandas />

      </div>
        

    </section>
  )
}
