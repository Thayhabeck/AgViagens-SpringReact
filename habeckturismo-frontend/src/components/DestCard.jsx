import React, { Component } from "react";

export default class DestCard extends Component {
    render() {
        return (
            <div className="box_destino card">
                <img src={this.props.imagem} alt="destino"/>
                <p className="descricao">{this.props.cidade}</p>
                <p className="descricao">{this.props.estado} </p>
                <hr/>
                <p className="diarias">Diárias a partir de</p>
                <p className="preco">R$ {this.props.preco.toFixed(2)}</p>
            </div>
        )
    }
}