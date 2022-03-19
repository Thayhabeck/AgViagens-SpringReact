import React, { useState, useEffect } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import ViagemService from "../../services/ViagemService";
import DestinoService from "../../services/DestinoService"
import UsuarioService from "../../services/UsuarioService";

export default function CreateViagem() {
    const [dataIda, setDataIda] = useState("");
    const [dataVolta, setDataVolta] = useState("");
    const [destino, setDestino] = useState({});
    const [usuario, setUsuario] = useState({})
    const [destinos, setDestinos] = useState([]);
    const [usuarios, setUsuarios] = useState([]);

    const { id } = useParams();
    const navigate = useNavigate();

    const getAllDestinos = () => {
        DestinoService.getAllDestinos()
            .then((response) => {
                setDestinos(response.data.content);
            }).catch((error) => {
                console.log(error);
            });
    };

    const getAllUsuarios = () => {
        UsuarioService.getAllUsuarios()
            .then((response) => {
                setUsuarios(response.data);
            }).catch((error) => {
                console.log(error);
            });
    };

    
    const createOrEditViagem = (e) => {
        e.preventDefault();
        const viagem = { dataIda, dataVolta, destino, usuario };
        if (id) {
            ViagemService.updateViagem(id, viagem)
            .then((response) => {
                navigate("/viagem");
            });
        } else {
            ViagemService.createViagem(viagem)
            .then((response) => {
                navigate("/viagem");
            });
        }
    }
    
    useEffect(() => {
        getAllDestinos();
    }, []);

    useEffect(() => {
        getAllUsuarios();
    }, []);

    useEffect(() => {
        function getViagemById() {
            if (id) {
                ViagemService.getViagemById(id)
                    .then((response) => {
                        setDataIda(response.data.dataIda);
                        setDataVolta(response.data.dataVolta);
                        setDestino({ idDestino: response.data.destino.idDestino, 
                                    cidade: response.data.destino.cidade,
                                    estado: response.data.destino.estado,
                                    imagem: response.data.destino.imagem,
                                    precoDiaria: response.data.destino.precoDiaria,
                                    regiao: {idRegiao: response.data.destino.regiao.idRegiao,
                                    nomeRegiao: response.data.destino.regiao.idRegiao}});
                        setUsuario({ idUsuario: response.data.idUsuario, 
                            nome: response.data.nome,
                            email: response.data.email,
                            login: response.data.login,
                            senha: response.data.senha
                        });
                    }).catch((error) => {
                        console.log(error);
                    })
            }
        }
        getViagemById();
    }, [id]);

    return (
        <div className="container py-4 mt-5">
            <form>
                <fieldset>
                    <legend className="bg-dark rounded-3 p-3 text-light">
                        <h2 className="text-center">
                            {id ? "Editar Viagem" : "Adicionar Viagem"}
                        </h2>
                    </legend>
                    <div className="mb-3">
                        <label htmlFor="DataIda" className="form-label fw-bolder">Data de Ida</label>
                        <input type="text" id="DataIda" className="form-control" placeholder="Data de Ida"
                            value={dataIda}
                            onChange={(e) => setDataIda(e.target.value)} />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="DataVolta" className="form-label fw-bolder">Data de Volta</label>
                        <input type="text" id="DataVolta" className="form-control" placeholder="Data de Volta"
                            value={dataVolta}
                            onChange={(e) => setDataVolta(e.target.value.toString())} />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="destino" className="form-label fw-bolder">Destino</label>
                        <select className="form-select"
                            aria-label="Destino"
                            onChange={(e) => setDestino({ idDestino: Number.parseInt(e.target.value) })}>
                            <option value="default">{id ? destino.cidade : "Escolha um Destino"}</option>
                            {destinos.map((destino) => (
                                <option key={destino.idDestino} value={destino.idDestino}>{destino.cidade + " - " + destino.estado}</option>
                            ))};
                        </select>
                    </div>
                    <div className="mb-3">
                        <label htmlFor="destino" className="form-label fw-bolder">Usuario</label>
                        <select className="form-select"
                            aria-label="Usuario"
                            onChange={(e) => setDestino({ idUsuario: Number.parseInt(e.target.value) })}>
                            <option value="default">{id ? usuario.nome : "Escolha um Viajante"}</option>
                            {usuarios.map((usuario) => (
                                <option key={usuario.idUsuario} value={usuario.idUsuario}>{usuario.nome }</option>
                            ))};
                        </select>
                    </div>
                    <button type="submit" className="btn btn-primary" onClick={(e) => createOrEditViagem(e)}>Enviar</button>
                    <Link to="/viagem" className="btn btn-danger" style={{ marginLeft: '10px' }}>Cancelar</Link>
                </fieldset>
            </form>
        </div>
    );
}
