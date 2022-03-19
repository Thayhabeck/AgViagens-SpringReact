import React, { useState, useContext } from "react";
import { Link } from "react-router-dom";
import { AuthContext } from "../../contexts/auth";
import "./styles.css"

const LoginPage = () => {
    const {login} = useContext(AuthContext);

    const [username, setEmail] = useState("");
    const [senha, setSenha] = useState("");

    const handleSubmit = (event) => {
        event.preventDefault();
        login(username, senha);
    }
  
    return (
        <div className="container py-2 mt-2 align-content-center">
            <form className="form" onSubmit={handleSubmit}>
                <fieldset className="field">
            <legend className="bg-dark rounded-3 p-3 text-light">
                <h2 className="text-center">
                    Login
                </h2>
                </legend>
                <div className="mb-3">
                    <label className="form-label fw-bolder" htmlFor="username">Nome de Usuário</label> <br/>
                    <input className="form-control" type="text" name="username" id="username" placeholder="Nome de Usuário" value={username} onChange={(e) => setEmail(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <label className="form-label fw-bolder" htmlFor="senha">Senha</label> <br/>
                    <input className="form-control" type="password" name="senha" id="senha" placeholder="Senha" value={senha} onChange={(e) => setSenha(e.target.value)}/>
                </div>
                <div className="d-grid gap-2 col-6 mx-auto mb-3">
                    <button className="btn btn-primary" type="submit">Entrar</button>
                </div>
                <a className="mt-2" href="...">Esqueceu sua senha ?</a>
                <p className="mt-2">Não tem uma conta? <Link to="/cadastro">Registre-se</Link></p>
                <hr className="hr"/>
                    <div className="p">ou</div>
                    <hr className="hr"/>

                    <button className="botoes button-google">Entrar com o Google</button>
                    <button className="botoes button-facebook">Entrar com o Facebook</button>
                    </fieldset>
            </form>
        </div>
        
    );
};

export default LoginPage;