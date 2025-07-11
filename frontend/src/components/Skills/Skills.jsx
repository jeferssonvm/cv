import React from 'react'
import { FaPython, FaJsSquare } from 'react-icons/fa';
import { BsFiletypeSql } from 'react-icons/bs';
import { RiFileExcel2Line } from 'react-icons/ri';
import { SiPandas, SiNumpy, SiScikitlearn } from 'react-icons/si';
import { TiHtml5 } from "react-icons/ti";
import { FaCss3Alt } from "react-icons/fa";
import { FaReact } from "react-icons/fa";



import './Skills.css';

export default function Skills() {
  return (
    <section className="skills">
      <h2 className="skills__section-title">Skills</h2>

      <section className="skills__group skills__group--data">
        <h3 className="skills__group-title">Habilidades en Análisis de Datos</h3>

        <h4 className="skills__category-title">Lenguajes</h4>
        <div className="skills__icons">
          <FaPython className="icon python" title="Python" />
          <BsFiletypeSql className="icon sql" title="SQL" />
          <FaJsSquare className="icon javascript" title="JavaScript" />
          <TiHtml5 className="icon html" title="HTML5" />
          <FaCss3Alt className="icon css" title="CSS3" />
        </div>


        <h4 className="skills__category-title">Herramientas y Librerías</h4>
        <div className="skills__icons">
          <SiPandas className="icon pandas" title="Pandas" />
          <SiNumpy className="icon numpy" title="NumPy" />
          <RiFileExcel2Line className="icon excel" title="Excel" />
          <FaReact className="icon react" title="React" />
          {/* <SiScikitlearn className="icon scikit" title="Scikit-learn" /> */}

        </div>
      </section>
    </section>
  );
}
