import React from 'react'
import { FaPython, FaJsSquare } from 'react-icons/fa';
import { BsFiletypeSql } from 'react-icons/bs';
import { RiFileExcel2Line } from 'react-icons/ri';
import { SiPandas, SiNumpy, SiScikitlearn } from 'react-icons/si';


import './Skills.css';

export default function Skills() {
  return (
    <section className="skills">
      <h2 className="skills__section-title">Skills</h2>

      <section className="skills__group skills__group--data">
        <h3 className="skills__group-title">Habilidades en Análisis de Datos</h3>

        <h4 className="skills__category-title">Lenguajes</h4>
        <div className="skills__icons">
          <FaPython title="Python" />
          <BsFiletypeSql title="SQL" />
          <FaJsSquare title="JavaScript" />
        </div>

        <h4 className="skills__category-title">Herramientas y Librerías</h4>
        <div className="skills__icons">
          <SiPandas title="Pandas" />
          <SiNumpy title="NumPy" />
          {/* <SiScikitlearn title="Scikit-learn" /> */}
          <RiFileExcel2Line title="Excel" />
        </div>
      </section>
    </section>
  );
}
