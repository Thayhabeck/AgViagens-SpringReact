import React from "react";
import imgFooter from '../assets/recodepro.png'

export default function Footer() {
    return (
        <footer className="footer fw-lighter fixed-bottom">
            <div className="container">
                &copy; 2022 - HabeckTurismo - <a href="https://www.recodepro.org.br/" target="_blank" rel="noreferrer"><img className="img-recode" src={imgFooter} alt="Recode pro" /></a>
            </div>
        </footer>
    )
}
