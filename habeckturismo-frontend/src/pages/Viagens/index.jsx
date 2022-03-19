import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import ViagemService from "../../services/ViagemService";

export default function Viagens() {
    const [viagens, setViagens] = useState([]);
    const getAllViagens = () => {
        ViagemService.getAllViagens()
            .then((response) => {
                setViagens(response.data);
            }).catch((error) => {
                console.log(error);
            });
    };

    useEffect(() => {
        getAllViagens();
    }, []);

    const deleteViagem = (viagemId) => {
        if (window.confirm("Deseja realmente excluir esta viagem?")) {
            ViagemService.deleteViagem(viagemId)
                .then((response) => {
                    getAllViagens();
                }).catch((error) => {
                    console.log(error);
                    const { data } = error.response;
                    if (data.status === 500)
                        alert("Não é possível excluir este dado!");
                });
        }
    };

    return (
        <div className="container py-4 mt-5">
            <Link className="btn btn-primary" style={{ marginBottom: '10px' }} to="/viagemCreate">Adicionar Viagem</Link>

            <table className="table table-responsive table-hover table-striped">
                <thead>
                    <tr className="bg-dark text-light">
                        <th>Viajante</th>
                        <th>Destino</th>
                        <th>Ida</th>
                        <th>Volta</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    {viagens.map((viagem) => (
                        <tr key={viagem.idViagem}>
                            <td>{viagem.usuario.nome}</td>
                            <td>{viagem.destino.cidade}</td>
                            <td>{viagem.dataIda}</td>
                            <td>{viagem.dataVolta}</td>
                            <td>
                                <Link className="btn btn-warning" style={{ margin: '5px' }} to={`/viagemUpdate/${viagem.idViagem}`}>
                                    <span className="material-icons">
                                        edit
                                    </span>
                                </Link>
                                <button className="btn btn-danger" onClick={() => deleteViagem(viagem.idViagem)} style={{ marginLeft: '10px' }}>
                                    <span className="material-icons">
                                        delete
                                    </span>
                                </button>
                            </td>
                        </tr>
                    ))}

                </tbody>
            </table>
        </div>
    );
}