import React from 'react'
import './Jobs.css'
const jobsData = [
  {
    id:'1',
    name:'cenda',
    role:'Director tecnico',
    start_date:'2024-07-08',
    description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora at, perspiciatis minima quasi voluptatibus ipsam totam, id amet sapiente consequuntur iste eaque nemo nesciunt labore non veniam quae? Quis, earum.',
    end_date:'2025-07-08',
    is_visible: true
  },

  {
    id:'2',
    name:'2cenda',
    role:'Director tecnico',
    start_date:'2024-07-08',
    description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora at, perspiciatis minima quasi voluptatibus ipsam totam, id amet sapiente consequuntur iste eaque nemo nesciunt labore non veniam quae? Quis, earum.',
    end_date:'2025-07-08',
    is_visible: true
  },
  {
    id:'3',
    name:'3cenda',
    role:'Director tecnico',
    start_date:'2024-07-08',
    description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora at, perspiciatis minima quasi voluptatibus ipsam totam, id amet sapiente consequuntur iste eaque nemo nesciunt labore non veniam quae? Quis, earum.',
    end_date:'2025-07-08',
    is_visible: true
  },

  {
    id:'4',
    name:'cenda',
    role:'Director tecnico',
    start_date:'2024-07-08',
    description: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora at, perspiciatis minima quasi voluptatibus ipsam totam, id amet sapiente consequuntur iste eaque nemo nesciunt labore non veniam quae? Quis, earum.',
    end_date:'2025-07-08',
    is_visible: false
  }
  
]
const list_jobs = jobsData.map((info)=>{
  if(info.is_visible){
    return(
    <section className='job'> 
        <p className='job--date'>{`${info.start_date} — ${info.end_date}`}</p>
        <h4 className='job--title'>{info.role}</h4>
        <p className='job--company'>{info.name}</p>
        <p className='job--description'>{info.description}</p>
        {/* <div className='jobs__skills'>
          <p>React</p>
          <p>Html</p>
        </div> */}
    </section>
  )
  }
})
export default function Jobs() {
  return (
    <section className='content-jobs'>
      <h2>Jobs</h2>
      {list_jobs}
    </section>
  )
}
