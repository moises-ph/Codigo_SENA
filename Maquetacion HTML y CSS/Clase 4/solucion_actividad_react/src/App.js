import React from 'react'
import Asus from './imagenes/asus.png'
import Dell from './imagenes/dell.jpg'

function App() {
  return (
    <>
      <h1>COMPUSTORE</h1>
      <h2>Nuestros productos son marca:</h2>
      <ul>
          <li>DELL</li>
          <li>HP</li>
          <li>ASUS</li>
          <li>LENOVO</li>
      </ul>
      <h2>Diseños DELL</h2>
      <a href="https://www.dell.com/" target="_blank"><img src={Dell} alt="Imagen computador DELL"/></a>
      <h3>Compra productos Dell <a href="#">Aquí</a></h3>
      <h2>Diseños ASUS</h2>
      <a href="https://www.asus.com/" targe="_blank"><img src={Asus} alt="Imagen computador ASUS"/></a>
      <h2>Nuestro Ranking de modelos del mes es:</h2>
      <ol>
          <li>Asus Vivo</li>
          <li>Dell Vostro</li>
          <li>Lenovo Thinkpad</li>
      </ol>
    </>
  )
}

export default App
