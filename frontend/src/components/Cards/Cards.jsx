import React from 'react'
import { FaGithubSquare } from "react-icons/fa";
import { FaEye } from "react-icons/fa";
import './Card.css';

const ejemplo = [
  {
    "user_id": 1,
    "name": "Plataforma de Energía Solar",
    "description": "Aplicación web para monitorear producción solar en tiempo real usando FastAPI, React y bases de datos MySQL.",
    "link_img": "https://img-database.jeferssonvm97.com/img_projects/To_Do_List.png",
    "link_github": "https://github.com/jeferssonvm/energia-solar",
    "role": "Desarrollador Full Stack",
    "is_visible": true,
    "category": "Web",
    "link_repository": "https://gitlab.com/jeferssonvm/energia-solar",
    "start_date": "2024-03-01",
    "end_date": "2024-06-15"
  },
  {
    "user_id": 1,
    "name": "Detector de Plagas con IA",
    "description": "Sistema de visión artificial para detectar plagas en cultivos de plátano utilizando Python y Machine Learning.",
    "link_img": "https://img-database.jeferssonvm97.com/img_projects/To_Do_List.png",
    "link_github": "https://github.com/jeferssonvm/detector-plagas-ia",
    "role": "Científico de Datos",
    "is_visible": true,
    "category": "Data Science",
    "link_repository": "",
    "start_date": "2024-09-10",
    "end_date": "2024-11-20"
  },
  {
    "user_id": 1,
    "name": "Panadería Virtual Regional",
    "description": "E-commerce experimental basado en React para vender productos típicos como café, trucha y guayaba, usando pagos simulados.",
    "link_img": "https://img-database.jeferssonvm97.com/img_projects/To_Do_List.png",
    "link_github": "https://github.com/jeferssonvm/panaderia-virtual",
    "role": "Frontend Developer",
    "is_visible": false,
    "category": "Web",
    "link_repository": "",
    "start_date": "2025-02-01",
    "end_date": "2025-03-10"
  }
]


export default function Cards() {
const listcard = ejemplo.map(project => {
  if (!project.is_visible) return null; // Skip hidden projects
  return (
    <section className='card'>
        <picture className='card--img'>
            <img src={project.link_img} alt="imagen" />
        </picture>
        <h3 className='card--title'>{project.name}</h3>
        <div className='card--links'>
            <a href=""><FaGithubSquare /></a>
            <a href=""><FaEye /></a>
        </div>
        {/* <p className='card--description'>{project.description}</p> */}
    </section>
  );
});
const listcard2 = ejemplo.map(project => {
  if (!project.is_visible) return null; // Skip hidden projects
  return (
    <section className='card'>
        <picture className='card--img'>
            <img src={project.link_img} alt="imagen" />
        </picture>
        <h3 className='card--title'>{project.name}</h3>
        <div className='card--links'>
            <a href=""><FaGithubSquare /></a>
            <a href=""><FaEye /></a>
        </div>
        {/* <p className='card--description'>{project.description}</p> */}
    </section>
  );
});
  return (
    <>
      {listcard}
      {listcard2}
    </>
  )
}
620