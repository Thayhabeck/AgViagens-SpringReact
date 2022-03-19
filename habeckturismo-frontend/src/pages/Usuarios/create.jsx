import React, { useState, useEffect } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import UsuarioService from "../../services/UsuarioService";
import "./styles.css"

export default function CreateUser() {
    const [nome, setNome] = useState("");
    const [email, setEmail] = useState("");
    const [login, setLogin] = useState("");
    const [senha, setSenha] = useState("");
    const { id } = useParams();
    const navigate = useNavigate();

    const createOrEditUsuario = (e) => {
        e.preventDefault();
        const usuario = {nome, email, login, senha};
        if (id) {
            UsuarioService.updateUsuario(id, usuario)
            .then((response) => {
                navigate("/login");
            });
        } else {
            UsuarioService.createUsuario(usuario)
            .then((response) => {
                navigate("/login");
            });
        }
    }

    useEffect(() => {
        function getUsuarioById() {
            if (id){
                UsuarioService.getUsuarioById(id)
                .then((response) => {
                    setNome(response.data.nome);
                    setEmail(response.data.email);
                    setLogin(response.data.login);
                    setSenha(response.data.senha);
                }).catch((error) => {
                    console.log(error);
                })
            }
        }
        getUsuarioById();
    }, [id]);

return (
    <div className="container py-4 mt-5">
        <form className="form">
            <fieldset className="field">
                <legend className="bg-dark rounded-3 p-3 text-light">
                <h2 className="text-center">
                    {id ? "Alterar dados" : "Cadastro"}
                </h2>
                </legend>
                <div className="mb-3">
                    <label htmlFor="Nome" className="form-label fw-bolder">Nome</label>
                    <input type="text" id="Nome" className="form-control" placeholder="Nome" 
                    value={nome}
                    onChange={(e) => setNome(e.target.value)} />
                </div>
                <div className="mb-3">
                    <label htmlFor="Email" className="form-label fw-bolder">Email</label>
                    <input type="email" id="Email" className="form-control" placeholder="Email" 
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <label htmlFor="Login" className="form-label fw-bolder">Nome de usuário</label>
                    <input type="text" id="Login" className="form-control" placeholder="Nome de Usuário" 
                    value={login}
                    onChange={(e) => setLogin(e.target.value)}/>
                </div>
                <div className="mb-3">
                    <label htmlFor="Senha" className="form-label fw-bolder">Senha</label>
                    <input type="password" id="Senha" className="form-control" placeholder="Senha" 
                    value={senha}
                    onChange={(e) => setSenha(e.target.value)}/>
                </div>
                <button type="submit" className="btn btn-primary" onClick={(e) => createOrEditUsuario(e)}>Enviar</button>
                <Link to="/" className="btn btn-danger" style={{marginLeft: '10px'}}>Cancelar</Link>
            </fieldset>
        </form>
    </div>
);
}