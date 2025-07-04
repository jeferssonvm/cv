import React, {useState} from 'react'
import { IoMenuSharp, IoClose } from "react-icons/io5";


export default function header() {
  const [isOpen, setIsOpen] = useState(false);
  let navInfo;
  if (!isOpen) {
            navInfo=<>
                      <picture>
                          <img src="https://img-database.jeferssonvm97.com/img_projects/Logo/jvm_logo-gris.png" alt="Logo" style={{ width: '50px' }} />

                      </picture>
                      <picture>
                        <IoMenuSharp onClick={() => setIsOpen(true)} />
                      </picture>
                    </>
          }else {
            navInfo=<>
                      <picture>
                        <IoClose style={{ color: 'white' }} onClick={() => setIsOpen(false)}/>
                      </picture>
                      <nav>
                        <ul>
                          <li>Home</li>
                          <li>About</li>
                          <li>Contact</li>
                        </ul>
                      </nav>
                    </>
          }
  return (
    <div style={{ backgroundColor: 'black' }}>
        {navInfo}
    </div>
  )
}
