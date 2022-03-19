import React, { useContext, useState } from "react";
import { Link } from "react-router-dom";
import { AuthContext } from "../contexts/auth";
import "./styles.css"
import LogoSVG from "../assets/Logo.svg"

export default function Nav() {
  const [isNavCollapsed, setIsNavCollapsed] = useState(true);
  const handleNavCollapse = () => setIsNavCollapsed(!isNavCollapsed);
  const { isLogged, logout, user, authenticated } = useContext(AuthContext);
  const handleLogout = () => {
    logout();
  }
  const userNm = () => {
    if(user !== null){
    return <p className="m-0 p-1 px-2 fs-6">Olá, {user.nome}</p>
    } else {
      return;
    }
  }
  const authButton = () => {
    console.log(user);
    if (!isLogged && !authenticated) {
        return (
            <div className="btn-group">
                <Link className="btn btn-sm btn-outline-dark" to="/login">Login</Link>
                <Link className="btn btn-sm btn-outline-dark" to="/cadastro">Cadastro</Link>
            </div>
        )
            
    } else {
        return (
          <div className="d-inline-flex align-content-center">
          {userNm()}
        <button className="btn btn-sm btn-outline-dark"  onClick={handleLogout}>Logout</button>
        </div>)
    }
}
  return (
    <nav className="navbar navbar-expand-lg navbar-light border-bottom box-shadow  fixed-top" >
      <div className="container-fluid">
        <div className="navbar-brand">
        <img src={LogoSVG} className="logo" alt="Logo"/>
        </div>
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded={!isNavCollapsed ? true : false} aria-label="Toggle navigation" onClick={handleNavCollapse}>
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className={`${isNavCollapsed ? 'collapse' : ''} navbar-collapse accordion-flush`} id="navbarNav">
          <ul className="navbar-nav">
            <li className="nav-item">
              <Link className="nav-link" to="/" onClick={handleNavCollapse}>
                Home
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/destinos" className="nav-link" onClick={handleNavCollapse}>
                Destinos
              </Link>
            </li>
            <li className="nav-item">
              <Link to="/viagem" className="nav-link" onClick={handleNavCollapse}>
                Viajar
              </Link>
            </li>
          </ul>
        </div>
        <div className="mx-3 ">
                {authButton()}
        </div>
      </div>
    </nav>
  );
}
